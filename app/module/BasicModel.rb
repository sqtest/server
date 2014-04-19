module BasicModel
  def findByPk(pk)
    res = Application.db.instance.exec('select * from '+db+' where id=$1 limit 1', [pk])
    res[0]
  rescue
    {}
  end

  def find (criteria={})
    qf = findQueryFormat(criteria)
    sql = "select * from #{db}"
    if qf[1].size > 0
      sql += " where #{qf[0]} "
    end
    sql += ' limit 1'
    res = Application.db.instance.exec(sql, qf[1])
    res[0]
  rescue
    {}
  end

  def findAll(criteria={})
    qf = findQueryFormat(criteria)
    sql = "select * from #{db}"
    if qf[1].size > 0
      sql += " where #{qf[0]} "
    end
    res = Application.db.instance.exec(sql, qf[1])
    result = []
    res.each { |row| result.push(row) }
    result
  rescue
    []
  end

  def update(fields, criteria={})
    fp = findQueryFormat(fields)
    qp = findQueryFormat(criteria, fp.size)
    sql = "update #{db} set #{fp[0]} where #{qp[0]}"
    Application.db.instance.exec(sql, fp[1]+qp[1])
    true
  rescue
    false
  end

  def delete(criteria)
    sql = "delete from #{db}"
    qp = findQueryFormat(criteria)
    if(criteria.size > 0)
      sql += " where #{qp[0]}"
    end
    Application.db.instance.exec(sql, qp[1])
    true
  rescue
    false
  end

  def insert(fields)
    sql = "insert into #{db} "
    params = []
    fieldNames = []
    paramsNum = []
    i=1

    if(fields.size > 0)
      fields.each do |key, value|
        fieldNames.push(key)
        paramsNum.push("$#{i}")
        params.push(value)
        i += 1
      end
      sql += "(#{fieldNames.join(', ')}) values (#{paramsNum.join(', ')})"
    end
    Application.db.instance.exec(sql, params)
    true
  rescue
    false
  end

  private
  def findQueryFormat(conditions, paramsStartPosition=1)
    params = []
    keys = []
    if (conditions.size>0)
      conditions.each do |key, value|
        keys.push("#{key}=$#{paramsStartPosition}")
        params.push(value)
        paramsStartPosition+=1
      end
    end

    return [keys.join(' and '), params]
  end
end
