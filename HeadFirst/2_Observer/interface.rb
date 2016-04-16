#組み込みのObserverモジュールへ移行
#サブジェクト(subject)：変化する側のオブジェクト
#オブザーバ(Observer)：状態の変化を関連するオブジェクトに通知するインタフェース
#具象オブザーバ(ConcreteObserver)：状態の変化に関連して具体的な処理を行う
module Subject
  def initialize
    @observers = []
  end

  def registerObserver(o)
    @observers << o
  end

  def removeObserver(o)
    @observers.delete(o)
  end

  def notifyObservers()
  end
end

module Observer
  def update(temperature, humidity, pressure)
  end
end

#Observer class
class DisplayElement
  def display()
  end
end
