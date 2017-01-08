//
//  ViewController.swift
//  Signos
//
//  Created by Nubio Knupp on 15/11/16.
//  Copyright © 2016 Nubio Knupp. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos : [String] = []
    var significadoSignos : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        signos.append("Áries");
        signos.append("Touro");
        signos.append("Gêmeos");
        signos.append("Câncer");
        signos.append("Leão");
        signos.append("Virgem");
        signos.append("Libra");
        signos.append("Escorpião");
        signos.append("Sagitário");
        signos.append("Capricórnio");
        signos.append("Aquário");
        signos.append("Peixes");
        
        significadoSignos.append("O ariano é uma pessoa cheia de energia e entusiasmo. Pioneiro e aventureiro, lhe encantam as metas, a liberdade e as idéias novas.");
        significadoSignos.append("Zeloso e possessivo, um cauro pode tender a ser inflexível e ressentido. As vezes os Touro pecam de ser cobiçosos e de permitir-se tudo.");
        significadoSignos.append("Gêmeos é o signo dos irmãos idênticos e, como tal, seu caráter é duplo, bastante complexo e contraditório. Por um lado é versátil, mas pelo outro pode não ser sincero. Costumam ter elegância e cometer os erros dos jovens. Têm a felicidade, o egocentrismo, a imaginação e a inquietude das crianças. Os geminianos começam novas atividades e planos com entusiasmo, mas muitas vezes lhes falta a constância para realizá-los. Consideram a vida como um jogo e procuram diversão e novas situações.");
        significadoSignos.append("O caráter de um canceriano é o menos claro de todos os signos do zodíaco. Um canceriano pode ser de tímido e aborrecido a brilhante e famoso. Os cancerianos são conservadores e adoram a segurança e o calor do lar. De fato, para os homens de Câncer o lar é como um ninho, um refúgio para onde ir quando o estresse do trabalho é demasiado. A casa de um canceriano tende a ser seu refúgio pessoal mais do que uma vitrine para deslumbrar aos demais.");
        significadoSignos.append("Pelo lado positivo, o leonino é generoso, bondoso, fiel e carinhoso. É criativo, entusiasta e compreensivo com os demais. Pelo lado negativo, o leonino é prepotente e mandão. Pode ser intolerante e dogmático. Tende a interferir quando não deve.");
        significadoSignos.append("Seu lado positivo: Modéstia, inteligência e timidez. Os virgens costumam ser meticulosos, práticos e trabalhadores. Têm grande capacidade analítica e são fiáveis. ");
        significadoSignos.append("Seu lado positivo? Diplomáticos, encantadores e sociáveis. Os librianos são idealistas, pacíficos, otimistas e românticos. Têm um caráter afável e equilibrado. Seu lado negativo: São indecisos e facilmente influenciados por terceiros. Podem mudar de opinião facilmente e ser muito condescendentes.");
        significadoSignos.append("Pelo lado positivo, é emotivo, decidido, poderoso e apaixonado. Escorpião é um signo com muito magnetismo. Pelo lado negativo, é ciumento, compulsivo e obsessivo. Os escorpianos podem ser ressentidos e teimosos.");
        significadoSignos.append("Pelo lado positivo, são intelectuais, honestos, sinceros e simpáticos. Se caracterizam por seu otimismo, modéstia e bom humor. Pelo lado negativo, são tão otimistas que às vezes chegam a ser irresponsáveis. São superficiais, descuidados e inquietos.");
        significadoSignos.append("Pelo lado positivo, o capricorniano é ambicioso e disciplinado. É prático, prudente, tem paciência e é até cauteloso quando preciso. Tem um bom senso de humor e é reservado. Pelo lado negativo, o capricorniano tende a ser pessimista e, ante a situações difíceis, é um pouco fatalista. Às vezes lhe custa ser generoso e fazer favores de forma altruísta.");
        significadoSignos.append("Pelo lado positivo, o aquariano é simpático e humanitário. É honesto e totalmente leal; é original e brilhante; é independente e intelectual. Pelo lado negativo, o aquariano é imprevisível e tende a contrariar. É pouco emocional e não compreende a complexidade emocional de algumas pessoas e a traição entre amigos.");
        significadoSignos.append("Pelo lado positivo, é imaginativo e sensível. É amável e tem compaixão. É intuitivo e pensa nos demais. Pelo lado negativo, não assume a realidade. É idealista, mantém segredos e tem uma vontade algo débil. Deixa-se levar pelos demais..");
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaId : String = "signoCell";
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaId, for: indexPath);
        
        celula.textLabel?.text = signos[indexPath.row]
        
        return celula;
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true);
        showAlerta(index: indexPath.row);
    }
    
    func showAlerta(index : Int){
        let alertaController = UIAlertController(title: "Sobre seu signo", message: significadoSignos[index], preferredStyle: .alert);
        let acaoOk = UIAlertAction(title: "OK", style: .default, handler: nil);
        
        alertaController.addAction(acaoOk);
        
        present(alertaController, animated: true, completion: nil);
    }



}

