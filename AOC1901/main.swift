//
//  main.swift
//  AOC1901
//
//  Created by Heiko Goes on 15.12.19.
//  Copyright © 2019 Heiko Goes. All rights reserved.
//

import Foundation

let input = """
55131
114008
145297
76135
50317
134036
122136
97704
51245
141732
120427
142020
88166
55313
110391
112436
78195
74294
128984
68240
137098
142016
83577
89257
107744
67357
131342
98247
137501
134577
65696
84925
50159
110319
91921
103303
84505
84683
100811
82626
66774
123216
95151
88237
60705
124319
102926
143160
92780
64283
132434
113935
84907
113698
117240
129327
78837
144841
138054
130990
100191
141768
138941
108165
62138
121690
117305
90147
134422
78031
121331
120947
120235
138880
141076
119480
66844
77660
106364
99187
144244
120483
77715
135703
125521
123253
127556
96458
91965
73924
95176
87540
122083
146013
67761
100413
145994
149450
94330
112824
"""

func calcFuel(mass: Int) -> Int {
    return mass / 3 - 2
}

calcFuel(mass: 12)
calcFuel(mass: 14)
calcFuel(mass: 1969)
calcFuel(mass: 100756)

let result1 = input.split(separator: "\n")
    .map{Int($0)!}
    .map(calcFuel)
    .reduce(0, +)

print(result1)

// ------------------

func calcFuelRecursive(mass: Int) -> Int {
    let result = calcFuel(mass: mass)
    
    if result <= 0 {
        return 0
    }
    
    return result + calcFuelRecursive(mass: result)
}

calcFuelRecursive(mass: 14)
calcFuelRecursive(mass: 100756)

let result2 = input.split(separator: "\n")
    .map{Int($0)!}
    .map(calcFuelRecursive)
    .reduce(0, +)

print(result2)
