class NgwordValidator < ActiveModel::EachValidator
  ##カスタムバリデーションメソッド
  def validate_each(record, attribute, value)
    ngword = ['hoge', 'ugo']
    if ngword.include?(value)
      record.errors[attribute] << 'include ng word'
    end
  end
end
