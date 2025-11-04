// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract exemplosArrays{
    string[4] public Alunos; //0,1,2,3,4 -- esse é o limite do array
    string[] public DisciplinasNome; // Dinamica 0,1,2 ....
    string[][] private MatrizesDiscProf; //

    function definirDisciplina (string memory nomeD)external {
        DisciplinasNome.push(nomeD);
    }
    
    function deletarElemento(uint256 numeroD)external {
        delete DisciplinasNome[numeroD];
    }

    function definirAluno(uint8 num,string memory novoAluno) external {
        Alunos[num] = novoAluno;
    }

    //Definir Multidimencoes para disciplina do professor 
    //linha 0 coluna 0 -- sera a disciplina
    //linha 0 coluna 1 -- sera o professor

    //assim, a gaveta 0 esta guardando as dimensoes de disciplina e professor

    //nova gaveta 1:
    //linha 1 coluna 0 -- outra disciplina
    //linha 1 coluna 1 -- outro professor

    function definirProfessorDiciplina(string memory disciplina,string memory professor) external {
        MatrizesDiscProf.push([disciplina,professor]);
    }

    // Retornar matriz Jeito 1
    function mostrarProfessorDiciplina(uint256 numeroD) external view returns (string memory,string memory) {
        return (MatrizesDiscProf[numeroD][0],MatrizesDiscProf[numeroD][1]);
    }
    
    // Retornar matriz Jeito 2
    function mostrarProfessorDiciplina2(uint256 Indicediciplina,uint256 IndiceProf)external view returns(string memory){
        return MatrizesDiscProf[Indicediciplina][IndiceProf];
    } 
}