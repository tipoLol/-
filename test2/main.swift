import Foundation

//Критерии:
//Вы должны иметь 2 родительских(базовых) классов и по 2 наследующихся класса
//Каждый класс должен иметь не менее 3 переменных(1 из них - массив)
//Все свойства внутри классов должны быть закрытыми(приватными)
//Для массивов создать методы для добавления элемента, переопределения и удаления
//Вы должны иметь хотябы 1 закрытый метод внутри каждого класса
//Для каждого класса делать принт, говорящий о инициализации либо деинициализации элемента
//
//Когда закончите с подготовкой классов - создать по 3 объекта каждого из классов и пользуясь полиморфизмом и оператором is отобразить разные данные в консоль
//Когда перестаете работать с каким-то объектом - деинициализовать его
//Посчитать сколько переменных остались живыми(не были деинициализированы)
//
//
//Максимальное количество баллов за задание - 40
//По истечению 1 часа прием заданий производиться не будет

var name = "Game"
var stages = 1
var area = 1111
class game {
   private var name: String
   private var stages: Int
   private var area: Int
    
    init(name: String, stages: Int, area: Int) {
        self.name = name
        self.stages = stages
        self.area = area
    }
    
    func printInfo() {
        print("\(name). kolvo kills- \(stages). skolko toxic player - \(area)")
    }
    
}

class Food: game {
    var tenants: Int
    
    init(name: String, stages: Int, area: Int, tenants: Int) {
        self.tenants = tenants
        super.init(name: name, stages: stages, area: area)
    }
    
    override func printInfo(){
        print("\(name). kolvo kills - \(stages). skolko ukral - \(area). Количество toxikov - \(tenants)")
    }
    
}

class Uspeh: game {
    var itemsInside: [String]
    
    init(name: String, stages: Int, area: Int, itemsInside: [String]) {
        self.itemsInside = itemsInside
        super.init(name: name, stages: stages, area: area)
    }
    
    override func printInfo() {
        var string = ""
        
        for i in itemsInside{
            string += i
            string += "\n"
        }
        
        print("\(name). сколько сыграл - \(stages). сколько территории забрал - \(area). \(string)")
    }
    
}


var ForExample = game(name: "Dota2", stages: 10293, area: 1003)
var ForExample2 = game(name: "CS:GO", stages: 313129, area: 4004)
var gameCSGO = Uspeh(name: "+100", stages: 100, area: 1000, itemsInside: ["on", "prosto", "botik"])
var gameDota2 = Uspeh(name: "+100000EXP", stages: 1000, area: 1000, itemsInside: ["lol", "botik", "slilsya?"])

var total: [game] = [ForExample, ForExample2, gameCSGO, gameDota2]

for i in total {
    i.printInfo()
}
