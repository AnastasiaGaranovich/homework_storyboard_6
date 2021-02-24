import UIKit

class AppData {
    static var meals = [Meal]()
    
    static func createMenu() {
        
        let borshDefaults = Defaults.loadReview(index: 01)
        var borsch = [Review]()
        borsch.append(Review(date: Date.dateFromNumber(year: 2020, month: 10, day: 18), review: "Очень вкусный борщ. Говядина в супе очень нежная", rate: 5))
        borsch.append(Review(date: Date.dateFromNumber(year: 2019, month: 12, day: 28), review: "Обычный борщ, ничего сверхъестественного", rate: 3))
        
        var kotletaDefaults = Defaults.loadReview(index: 03)
        var kotletaKievski = [Review]()
        kotletaKievski.append(Review(date: Date.dateFromNumber(year: 2020, month: 04, day: 01), review: "Приятная на вкус котлетка и нежнейшее пюре. Все понравилось", rate: 5))
        
        var pelmeniDefaults = Defaults.loadReview(index: 04)
        
        var varenikiDefaults = Defaults.loadReview(index: 05)
        var vareniki = [Review]()
        vareniki.append(Review(date: Date.dateFromNumber(year: 2019, month: 11, day: 28), review: "Сладкое тесто и супер сладенькие ягоды вишни, порадовало также украшение из вишенок", rate: 5))
        vareniki.append(Review(date: Date.dateFromNumber(year: 2019, month: 10, day: 05), review: "Вишня в варениках была очень кислой, даже не доел", rate: 2))
        
        var gribnoiDefaults = Defaults.loadReview(index: 02)
        var gribnoiSup = [Review]()
        gribnoiSup.append(Review(date: Date.dateFromNumber(year: 2021, month: 01, day: 15), review: "Вкуснейший грибной суп, что я когда-либо пробовала", rate: 5))
        gribnoiSup.append(Review(date: Date.dateFromNumber(year: 2021, month: 01, day: 17), review: "Суп вкусный, но есть к чему стремиться", rate: 4))
        
        var olivieDefaults = Defaults.loadReview(index: 06)
        var olivie = [Review]()
        olivie.append(Review(date: Date.dateFromNumber(year: 2020, month: 09, day: 09), review: "Хорошее оливье, прям в точности как домашнее", rate: 5))
        olivie.append(Review(date: Date.dateFromNumber(year: 2020, month: 10, day: 10), review: "Не знаю как вообще можно было умудриться испортить оливье, просто ужас", rate: 1))
        
        var salatDefaults = Defaults.loadReview(index: 07)
        var sokDefaults  = Defaults.loadReview(index: 08)
        
        meals.append(Meal(id: 01,
                          name: "Борщ с говядиной",
                          description: "Свекла, картофель, морковь, лук репчатый, говядина отборная, укроп, петрушка",
                          image: #imageLiteral(resourceName: "borsch"),
                          reviews: borshDefaults.isEmpty ? borsch : borshDefaults))
        
        meals.append(Meal(id: 02, name: "Грибной суп", description: "Шампиньоны, картофель, лук, морковь, рубленное куриное филе", image: #imageLiteral(resourceName: "Gribnoj_sup"), reviews: gribnoiDefaults.isEmpty ? gribnoiSup : gribnoiDefaults))
        meals.append(Meal(id: 03, name: "Котлета по-Киевски с пюре", description: "Куриное филе. Начинка котлеты: сливочное масло, зелень, соль, черный перец. Картофель, молоко, укроп", image: #imageLiteral(resourceName: "kotleta_kievski_pure"), reviews: kotletaDefaults.isEmpty ? kotletaKievski: kotletaDefaults))
        meals.append(Meal(id: 04, name: "Запеченные пельмени с говяжьим фаршем", description: "Тесто для пельменей, говяжий фарш, зелень", image: #imageLiteral(resourceName: "pelmeni"), reviews: pelmeniDefaults.isEmpty ? [] : pelmeniDefaults))
        meals.append(Meal(id: 05, name: "Вареники с вишней", description: "Тесто для вареников, вишневый джем с кусочками вишневых ягод, для украшения: мята, ягоды вишни", image: #imageLiteral(resourceName: "vareniki_vishnya"), reviews: varenikiDefaults.isEmpty ? vareniki: varenikiDefaults))
        meals.append(Meal(id: 06, name: "Оливье", description: "Кусочки свинины, яйца, картофель, огурцы, майонез морковь, горошек консервированный", image: #imageLiteral(resourceName: "olivie"), reviews: olivieDefaults.isEmpty ? olivie: olivieDefaults))
        meals.append(Meal(id: 07, name: "Салат с крабовыми палочками", description: "Крабовый палочки, помидоры, мягкий сыр, яйца, укроп", image: #imageLiteral(resourceName: "salat_krabovye_palochki"), reviews: salatDefaults.isEmpty ? [] : salatDefaults))
        meals.append(Meal(id: 08, name: "Cок яблочный", description: "Свежевыжатый сок из отборных яблок сорта Golden Delicious", image: #imageLiteral(resourceName: "yablochnyj_sok"), reviews: sokDefaults.isEmpty ? [] : sokDefaults))
    }
}
