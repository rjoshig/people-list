pragma solidity ^0.5.0;



contract People {
    
    Person[] public people;

   struct Person {
       bytes32 name;
       uint age;
   }

    //add person

    function addPerson (bytes32 _name, uint _age) 
    public
    returns (bool success ) {
       
        Person memory newPerson;
        newPerson.name= _name;
        newPerson.age= _age;

        people.push(newPerson);
        return true;
    }


    //get person
    function getPerson() view public returns (bytes32[] memory, uint[] memory) {
        bytes32[] memory names;
        uint[] memory ages;

        for (uint i=0; i< people.length;i++ ) {
                Person memory currentPerson;
                currentPerson=people[i];

                names[i] = currentPerson.name;
                ages[i]  = currentPerson.age;
        }
        return (names, ages);

    }

}
