//
//  File.swift
//  Charito
//
//  Created by Amit on 8/22/18.
//  Copyright © 2018 Auzia. All rights reserved.
//

import Foundation

class QuestionPool{
    
    // Do any additional setup after loading the view, typically from a nib.
    public let fifthSixthQuestionPool = [
        Question(question: "12^2=?", arrayOfAnswers: ["144","121","108","24"], correctAnswer: 144),
        Question(question: "0^94", arrayOfAnswers: ["94","940","1","0"], correctAnswer: 0),
        Question(question: "4(10-2)", arrayOfAnswers: ["80","40","32","28"], correctAnswer: 32),
        Question(question: "5(6-2)", arrayOfAnswers: ["30","20","10","18"], correctAnswer: 20),
        Question(question: "(63/7)-2", arrayOfAnswers: ["9","53","61","7"], correctAnswer: 7),
        Question(question: "3(2+3)", arrayOfAnswers: ["1","16","15","18"], correctAnswer: 15),
        Question(question: "12*2 = c+6", arrayOfAnswers: ["30","20","24","6"], correctAnswer: 30),
        Question(question: "154-33", arrayOfAnswers: ["123","124","125","23"], correctAnswer: 123),
        Question(question: "198-106", arrayOfAnswers: ["92","192","96","93"], correctAnswer: 92),
        Question(question: "13*5", arrayOfAnswers: ["75","65","60","70"], correctAnswer: 65),
        Question(question: "17*2", arrayOfAnswers: ["34","32","42","44"], correctAnswer: 34),
        Question(question: "What percent of 30 is 20?", arrayOfAnswers: ["66","33","20","30"], correctAnswer: 66),
        Question(question: "Out of 30 kids, 50% play baseball. How many kids don't play baseball?", arrayOfAnswers: ["10","30","15","50"], correctAnswer: 15),
        Question(question: "1:7 = 2:?", arrayOfAnswers: ["15","8","14","6"], correctAnswer: 14),
        Question(question: "1:8 = ?:24", arrayOfAnswers: ["3","2","16","15"], correctAnswer: 3),
        Question(question: "3:54 = ?:18", arrayOfAnswers: ["1","2","3","4"], correctAnswer: 1),
        Question(question: "What's the volume of a cube with sides that are 3 units long?", arrayOfAnswers: ["27","9","12","6"], correctAnswer: 27),
        Question(question: "What's the volume of a cube with sides that are 5 units long?", arrayOfAnswers: ["120","125","12","25"], correctAnswer: 125),
        Question(question: "What's the volume of a cube with sides that are 10 units long?", arrayOfAnswers: ["100","1000","10","10000"], correctAnswer: 1000),
        Question(question: "99-64=?", arrayOfAnswers: ["34","35","45","65"], correctAnswer: 35),
        Question(question: "66/3", arrayOfAnswers: ["2","22","33","23"], correctAnswer: 22),
        Question(question: "99-43=?", arrayOfAnswers: ["56","76","66","55"], correctAnswer: 56),
        Question(question: "Which one is an obtuse angle?", arrayOfAnswers: ["181","18","90","80"], correctAnswer: 181),
        Question(question: "Which one is an acute angle?", arrayOfAnswers: ["32","222","90","180"], correctAnswer: 31),
        Question(question: "How many degrees are in a right angle?", arrayOfAnswers: ["180","90","45","60"], correctAnswer: 90)
        
    ]
    
    public let seventhEighthQuestionPool = [
        Question(question: "", arrayOfAnswers: ["","","",""], correctAnswer: 0)
    ]
    
    public let ninthTenthQuestionPool = [
        Question(question: "In a 30-60-90 triangle, if the hypotenuse length is 6 inches, how long is the shortest side of the triangle?", arrayOfAnswers: ["2/sqrt3","3","2","2/sqrt2"], correctAnswer: 1),
        Question(question: "If the circumference of a circle is 30pi, what is its area in terms of pi", arrayOfAnswers: ["15pi","45pi","225pi","900pi"], correctAnswer: 2),
        Question(question: "Which of the following could be possible side lengths of a right triangle?", arrayOfAnswers: ["5,12,13","4,5,6","7,18,25","7,15,18"],correctAnswer: 0),
        Question(question:"Which is not a correct posulate for proving the congruence of a triangle?", arrayOfAnswers:["Side-Angle-Side","Angle-Side-Angle","Side-Side-Side","Angle-Angle-Angle"], correctAnswer: 3),
        Question(question: "What is the probability of rolling two odd numbers in a row on a regular six sided die?", arrayOfAnswers: ["1/4","1/2","2/9","1/18"], correctAnswer : 0), Question(question: "A stray dog ate 21 of your muffins. That was 3/4 of all of them! With how many did you start with?", arrayOfAnswers: ["15","28","30","18"], correctAnswer : 1), Question(question: "If Luis rents a bike for $15 plus $2.50 per hour, how many hours did Luis rent the bike for if he paid $25?", arrayOfAnswers: ["10","8","6","4"], correctAnswer : 3), Question(question: "Find the 5th term of the Geometric progression 64,16,4", arrayOfAnswers: ["1","4","1/16","1/4"], correctAnswer : 3), Question(question: "Find the sum of 11+12+13...+31", arrayOfAnswers: ["440","420","441","444"], correctAnswer : 2), Question(question: "A hemispherical bowl of radius 30cm is filled with soap paste. If this paste is made into cylindrical soap cakes of radius 5cm and height 2cm how many cakes do we get?", arrayOfAnswers: ["18,000","540","90","360"], correctAnswer : 3), Question(question: "If two dice are thrown, what is the probability of getting the same number on both the dice?", arrayOfAnswers: ["1/36","1/6","1/12","1/9"], correctAnswer : 1), Question(question: "Fill in the blank. Sin measures the ratio of the ______ length over the _________ length", arrayOfAnswers: ["Opposite, Hypotenuse","Hypotenuse, Opposite","Adjacent, Hypotenuse","Opposite, Adjacent"], correctAnswer : 0), Question(question: "Fill in the blank. cosine measures the ratio of the ______ length over the _________ length", arrayOfAnswers: ["Opposite, Adjacent","Adjacent, Opposite","Adjacent, Hypotenuse","Opposite, Hypotenuse"], correctAnswer : 2), Question(question: "Fill in the blank. Tan measures the ratio of the ______ length over the _________ length", arrayOfAnswers: ["Opposite, Adjacent","Adjacent, Opposite","Opposite, Hypotenuse","Adjacent, Hypotenuse"], correctAnswer : 0), Question(question: "If two lines with slopes x and y are perpendicular, then what is x times y?", arrayOfAnswers: ["-1","1","0","Answers can vary"], correctAnswer : 0), Question(question: "Find the area of a 30 degree sector in a circle with a radius of 6 centimeters", arrayOfAnswers: ["12pi","3pi","36pi","18pi"], correctAnswer : 1), Question(question: "3m-1, 3m-3, 3m-5... is an example of an", arrayOfAnswers: ["Subratic Progression","Geomteric Progression","Arithmetic Progression","Harmonic Progression"], correctAnswer: 2), Question(question: "One card is drawn from a standard 52 card deck, what is the probability that the card is not a queen?", arrayOfAnswers: ["51/52","12/13","13/14","25/26"], correctAnswer: 1), Question(question: "The G.C.D of 12x^2y^7z^2 and 15x^4y^3z^5", arrayOfAnswers: ["3x^2yz","4x^2yz","3xyz","4xyz"], correctAnswer: 0), Question(question: "Three numbers are in the ratio 2:5:7. If 7 is subtracted from the second number, the resulting three numbers form an arithmetic sequence. Determine the orginal three numbers.", arrayOfAnswers: ["20, 70, 59","41, 63, 72","89, 118, 135","28, 70, 98"], correctAnswer: 3), Question(question: "Find the area of a quadrilateral with these coordinates (-4,-2), (-3,-5), (3,-2), (2,3).", arrayOfAnswers: ["24","28","38","34"], correctAnswer: 1), Question(question: "A train is traveling at a uniform speed from Point A to Point B. If it traveled 6mph slower, it would take 6 hours more than if it traveled at regular speed. If the train traveled 6mph faster, it would take 4 hours less to get to the destination than at regular speed. What is the distance between Point A and Point B?", arrayOfAnswers: ["850 miles","550 miles","160 miles","720 miles"], correctAnswer: 3), Question(question: "A school committee consists of 2 teachers and 4 students. What is the number of different committees that can be formed from 5 teachers and 10 students?", arrayOfAnswers: ["1500","2100","3100","5100"], correctAnswer: 1), Question(question: "How many tangents can be drawn from any point on the circle?", arrayOfAnswers: ["0","1","2","3"], correctAnswer: 2), Question(question: "The nth element of the sequence 1,3,5,7...", arrayOfAnswers: ["n+1","n-1","2n+1","2n-1"], correctAnswer: 3), Question(question: "Mesut weighs 56.7 pounds, if he reduces his weight in the ratio 7:6, what is his new weight?", arrayOfAnswers: ["46.6","47.8","48.6","49.8"], correctAnswer: 2), Question(question: "A man has five friends. In how many ways can he invite one or more of his friends to dinner?", arrayOfAnswers: ["15","25","30","31"], correctAnswer: 3), Question(question: "Find the LCM of 96 and 404.", arrayOfAnswers: ["9696","1256","5269","4926"], correctAnswer: 2), Question(question: "Which expression is not equivalent to 2^12?", arrayOfAnswers: ["(2^8)^4","(2^6)^2","(2^6)(2^6)","(2^3)(2^9)"], correctAnswer: 0), Question(question: "If triangle QRS is congruent to triagnle NYC, which segment will always be congruent to segment QS?", arrayOfAnswers: ["CY","NY","CN","Impossible to Determine"], correctAnswer: 2), Question(question: "In a 30-60-90 Triangle, what is the ratio of the longest side of the triangle to the shortest side of the triangle?", arrayOfAnswers: ["2-1","1-2","19-7","Impossible to determine"], correctAnswer: 0)
    ]
    public let eleventhTwelfthQuestionPool = [
        Question(question: "\\lim_{x\\to 0^-} (1 - \\frac{1}{x}", arrayOfAnswers: ["1","2","\\-infty","\\infty"], correctAnswer: 3),
        Question(question: "If f(x) = \\frac{1}{x-2} and \\lim_{x\\to (-k+1)} f(x) does not exist, then k =", arrayOfAnswers: ["2","3","1",  "-1"], correctAnswer: 3),
        Question(question: "\\lim_{x\\to 7} x+2", arrayOfAnswers: ["9", "7", "3", "2",], correctAnswer: 0),
        Question(question: "\\lim_{x\\to -1} x+4 for all values x other than -1", arrayOfAnswers: ["9", "7", "3", "2",], correctAnswer: 2),
        Question(question: "\\lim_{x\\to\\infty} x+2", arrayOfAnswers: ["1", "0", "DNE", "7"], correctAnswer: 2),
        Question(question: "\\lim_{x\\to\\infty} \\frac{2^{-x}}{3^x}", arrayOfAnswers: ["\\-infty", "2", "infty", "3"], correctAnswer: 2),
        Question(question: "\\lim_{x\\to\\infty} \\frac{5 + e^{-x}}{1 - e^{-x}}", arrayOfAnswers: ["\\-infty", "5", "infty", "1"], correctAnswer: 1),
        Question(question: "If\\ f(x) = x^{2/3},\\ which\\ of\\ the\\\\ following\\ statements\\ is\\ NOT\\ true?", arrayOfAnswers: ["The\\ graph\\ of\\ f(x)\\ is\\ symmetric\\ with\\ respect\\ to\\ the\\ y-axis.", "f(x)\\ is\\ an\\ even\\ function.", "The\\ range\\ of\\ f(x)\\ is\\ all\\ real\\ numbers", "f(x)\\ is\\ a\\ function."], correctAnswer: 2 ),
        Question(question: "The\\ sum\\ of\\ the\\ base\\ and\\ the\\ height\\ of\\ a\\ triangle\\ is\\ 30\\ centimeters.\\ Find\\ the\\ maximum\\ area\\ of\\ the\\ triangle.", arrayOfAnswers: ["112.5", "105.5", "225", "305"], correctAnswer: 0),
        Question(question: "The\\ sum\\ of\\ the base and the height of a square is 100 centimeters. Find the maximum area of the triangle.", arrayOfAnswers: ["250", "1000", "100", "2500"], correctAnswer: 3),
        Question(question: "If f(x) is a one-to-one function, and f(9) = 11, then which of the following CANNOT be true?", arrayOfAnswers: ["f(8) = 11", "f^{-1}(11) = 9", "f(-9) = -11", "f(-11) = -9"], correctAnswer: 1),
        Question(question: "What is \\frac{secx}{cscx}?", arrayOfAnswers: ["0", "sin(x)", "tan(x)", "cos(x)"], correctAnswer: 2),
        Question(question: "If the radius of a circle is 18 cm, what would be the measure of an angle that cuts an arc of length //pi cm", arrayOfAnswers: ["10 degrees", "\\pi radians", "360 degrees", "50 degrees"], correctAnswer: 0),
        Question(question: "If the radius of a circle is 1.8 cm, what would be the measure of an angle that cuts an arc of length //pi cm", arrayOfAnswers: ["100 degrees", "//pi radians", "360 degrees", "50 degrees"], correctAnswer: 0),
        Question(question: "If angle A falls in quadrant 1 and sin A = \\frac{3}{5}, what is cos A", arrayOfAnswers: ["\\frac{3}{5}", "Undeterminable", "\\frac{4}{5}", "3"], correctAnswer: 2),
        Question(question: "If angle A falls in quadrant 1 and tan A = \\frac{3}{4}, what is cos A", arrayOfAnswers: ["\\frac{3}{5}", "\\frac{4}{5}", "Undeterminable", "3"], correctAnswer: 1),
        Question(question: "If angle A falls in quadrant 3 and sin A = \\frac{-3}{5}, what is cos A", arrayOfAnswers: ["\\frac{3}{5}", "Undeterminable", "\\frac{4}{5}", "3"], correctAnswer: 2),
        Question(question: "If angle A falls in quadrant 1 and tan A = \\frac{3}{4}, what is cos A", arrayOfAnswers: ["\\frac{3}{5}", "\\frac{-4}{5}", "Undeterminable", "3"], correctAnswer: 1),
        Question(question: "Write an equation for a line passing through (3,5) with an undefined slope.", arrayOfAnswers: ["y = 3x + 5", "y = 4", "x = 3", "x = 4"], correctAnswer: 2),
        Question(question: "Write an equation for a line passing through (3,5) with a slope of -.", arrayOfAnswers: ["y = 3x + 5", "y = 4", "x = 3", "x = 4"], correctAnswer: 1)
    ]

   
}
