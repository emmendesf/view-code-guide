//
//  PackageViewData.swift
//  ViewCodeGuide
//
//  Created by Emerson Mendes Filho on 23/05/21.
//

struct PackageViewData {
    
    let pages: [PackagePageViewData] = [
        PackagePageViewData(
            title: "Pacote Básico",
            items: [
                PackageItemViewData(title: "R$ 29,90",
                                    subtitle: "O melhor valor do mercado"),
                PackageItemViewData(title: "Sem limites de uso",
                                    subtitle: "Não se preocupe mais com limite")
            ]
        ),
        PackagePageViewData(
            title: "Pacote Intermediário",
            items: [
                PackageItemViewData(title: "R$ 49,90",
                                    subtitle: "O melhor valor do mercado"),
                PackageItemViewData(title: "Sem limites de uso",
                                    subtitle: "Não se preocupe mais com limite")
            ]
        ),
        PackagePageViewData(
            title: "Pacote Max",
            items: [
                PackageItemViewData(title: "R$ 79,90",
                                    subtitle: "O melhor valor do mercado"),
                PackageItemViewData(title: "Sem limites de uso",
                                    subtitle: "Não se preocupe mais com limite")
            ]
        )
    ]
}
