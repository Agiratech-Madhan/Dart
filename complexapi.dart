void main() {
  Map? mymap = {
    "status": "success",
    "data": {
      "result": [
        {
          "_id": "5e549a7dc70b394464392821",
          "borrowDate": "2020-02-25T03:54:37.578Z",
          "bookID": "5e5430718e1576265487fb99",
          "userID": "5e541d291ceafc46186160e8",
          "__v": 0,
          "userInfo": [
            {
              "_id": "5e541d291ceafc46186160e8",
              "userType": "student",
              "token":
                  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVlNTQxZDI5MWNlYWZjNDYxODYxNjBlOCIsInVzZXJUeXBlIjoic3R1ZGVudCIsImlhdCI6MTU4MjU3MzUyN30.zpYIg4n9kaY5DWQiHTqRkY_aLsmxTxg3CX3lAVSDJm4",
              "name": "Suraj",
              "email": "180305105156@paruluniversity.ac.in",
              "password": "R4eAU��U{\"Ju",
              "branch": "CSE",
              "semester": "4",
              "enrollmentNo": 180305105156,
              "__v": 0,
              "cgpa": 8.5,
              "income": 200000
            }
          ],
          "bookData": [
            {
              "_id": "5e5430718e1576265487fb99",
              "uploadDate": "2020-02-24T20:20:57.837Z",
              "isAvailable": true,
              "tag": [""],
              "subject": "coa",
              "department": "computer science",
              "bookName": "computer organization",
              "author": "xyz",
              "bookType": "book",
              "__v": 0,
              "doner": 180305105156,
              "bookImage":
                  "https://images-na.ssl-images-amazon.com/images/I/51e1dHur4DL._SX323_BO1,204,203,200_.jpg"
            }
          ]
        },
        {
          "_id": "5e549a94c70b394464392822",
          "borrowDate": "2020-02-25T03:55:00.491Z",
          "bookID": "5e5431468e1576265487fb9b",
          "userID": "5e541d291ceafc46186160e8",
          "__v": 0,
          "userInfo": [
            {
              "_id": "5e541d291ceafc46186160e8",
              "userType": "student",
              "token":
                  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVlNTQxZDI5MWNlYWZjNDYxODYxNjBlOCIsInVzZXJUeXBlIjoic3R1ZGVudCIsImlhdCI6MTU4MjU3MzUyN30.zpYIg4n9kaY5DWQiHTqRkY_aLsmxTxg3CX3lAVSDJm4",
              "name": "Suraj",
              "email": "180305105156@paruluniversity.ac.in",
              "password": "R4eAU��U{\"Ju",
              "branch": "CSE",
              "semester": "4",
              "enrollmentNo": 180305105156,
              "__v": 0,
              "cgpa": 8.5,
              "income": 200000
            }
          ],
          "bookData": [
            {
              "_id": "5e5431468e1576265487fb9b",
              "uploadDate": "2020-02-24T20:20:57.837Z",
              "isAvailable": true,
              "tag": [""],
              "subject": "comic",
              "department": "comic",
              "bookName": "harry potter",
              "author": "j.k rowling",
              "bookType": "book",
              "__v": 0,
              "doner": 180305105156,
              "bookImage":
                  "https://images-na.ssl-images-amazon.com/images/I/51jNORv6nQL._SX340_BO1,204,203,200_.jpg"
            }
          ]
        },
        {
          "_id": "5e549ab3c70b394464392823",
          "borrowDate": "2020-02-25T03:55:31.015Z",
          "bookID": "5e54317b8e1576265487fb9c",
          "userID": "5e541d291ceafc46186160e8",
          "__v": 0,
          "userInfo": [
            {
              "_id": "5e541d291ceafc46186160e8",
              "userType": "student",
              "token":
                  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjVlNTQxZDI5MWNlYWZjNDYxODYxNjBlOCIsInVzZXJUeXBlIjoic3R1ZGVudCIsImlhdCI6MTU4MjU3MzUyN30.zpYIg4n9kaY5DWQiHTqRkY_aLsmxTxg3CX3lAVSDJm4",
              "name": "Suraj",
              "email": "180305105156@paruluniversity.ac.in",
              "password": "R4eAU��U{\"Ju",
              "branch": "CSE",
              "semester": "4",
              "enrollmentNo": 180305105156,
              "__v": 0,
              "cgpa": 8.5,
              "income": 200000
            }
          ],
          "bookData": [
            {
              "_id": "5e54317b8e1576265487fb9c",
              "uploadDate": "2020-02-24T20:20:57.837Z",
              "isAvailable": true,
              "tag": [""],
              "subject": "cn",
              "department": "computer science",
              "bookName": "computer networks",
              "author": "xyz",
              "bookType": "book",
              "__v": 0,
              "doner": 180305105156,
              "bookImage":
                  "https://5.imimg.com/data5/FS/AH/GLADMIN-17084875/computer-networks-book-500x500.png"
            }
          ]
        }
      ]
    }
  };
  // print(mymap['data']);
  // print(mymap['data']['result']);
  print(mymap['data']['result'][0]['userInfo'][0]['name']);
  List x = mymap['data']['result'][0]['userInfo'];
  x.forEach((element) => print(element['name'])); //Suraj

  List y = mymap['data']['result'];
}
