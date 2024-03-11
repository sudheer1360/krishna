// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ARWithIoT {

  string[] _usernames;
  string[] _passwords;

  
  mapping(string=>bool) _registeredUsers;

  constructor() {
  }

  function addUser(string memory username,string memory password) public {
    require(!_registeredUsers[username]);

    _usernames.push(username);
    _passwords.push(password);
    _registeredUsers[username]=true;
  }

  function viewUsers() public view returns(string[] memory,string[] memory) {
    return (_usernames,_passwords);
  }

  function ARWithIoTADXL(int value1,int value2,int value3) public pure returns(int) {
    if((value1<1 && value1>=-1) && (value2<2 && value2>=0) && (value3<10 && value3>=9)) {
      return (1);
      }
    else{
      return (0);
    }
  }

  function ARWithIoTBMP180(int value1,int value2) public pure returns(int){
    if((value1>100990 && value1<101300) && (value2>31 && value2<35)){
      return (1);
      }
    else{
      return (0);
    }
  }

  function ARWithIoTLDRandIR(int value1,int value2) public pure returns(int){
    if(value1==1 && value2==0) {
      return (1);
      }
    else if(value1==0 && value2==1){
      return (2);
    }
    else if(value1==1 && value2==1){
      return (3);
    }
    else{
      return (0);
    }
  }
}
