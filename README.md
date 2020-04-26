# 플러터 온라인 스터디

본 프로젝트는 플러터 온라인 스터디를 위한 것입니다.

목표는 간단한 영어 단어장을 만드는 것입니다.

## 해야 할 일

* 앱이 시작 될 때 마다 서버에 단어장 업데이트가 있는지 확힌
  * 업데이트가 있으면 다운 받아
  * Hive 에 저장
* 앱에서 리스트로 단어를 표시
  * 단어를 클릭하면 상세 페이지 표시
* 단어장 목록
  * 아는 단어
  * 모르는 단어
  * 전체 목록
* 인공지능 단어장 자동 분류

## 프로젝트 참여 방법

1. Git Repo 에 개발자로 등록합니다. 단톡방에 요청해주세요.
2. 개발은 반드시 자신의 'branch' 에서 해 주세요. 'master' 는 가능한 건드리지 마세요.
3. 프로젝트 관리자로 부터 역활을 분담 받으시고 작업을 진행해주세요.

## 백엔드

### 잉글리시 펀 단어장


#### 버전 확인

https://api.english-fun.com/wordpress-api-v2/php/api.php?method=app.version

#### 단어장 가져오기

* 단어장 Api: https://api.english-fun.com/wordpress-api-v2/res/englishfun/tmp/words.json
* 단어장 전체 사이즈: https://api.english-fun.com/wordpress-api-v2/res/englishfun/tmp/words-length.php

단어장이 업데이트 되면 전체 사이즈가 변경된다. 따라서 기존 사이즈를 보관해 놓고, 업데이트가 있는지 없는지 확인하면 된다.


## 레퍼런스

### 왕초보를 위한 팁

아래 순서대로 공부하세요.

1. www.github.com 사용법을 배웁니다.
   1. 참고: [깃허브 공부 자료](https://sunnykwak.tistory.com/97?fbclid=IwAR09R6DMdhXdjVfNWv8bdCWYTmnYOaMCIZTtlOD34aTfw2yuUxQM-TQERWc)
2. Flutter 기초를 배웁니다.
   1. [오준석의 생존코딩 - 입문편](https://www.youtube.com/watch?v=lRbZsBvG9Ig&list=PLxTmPHxRH3VUueVvEnrP8qxHAP5x9XAPv)
   2. [오준석의 생존코딩 - 중급편](https://www.youtube.com/watch?v=ei8TX-uqP6E&list=PLxTmPHxRH3VWLY-eyQuV1C_IbIQlCXEhe)
   3. [코딩셰프의 Flutter 동영상 강좌](https://www.youtube.com/channel/UC_2ge45JCuJH1z6VYt4iCgQ)
   4. [더코딩파파의 FLutter 동영상 강좌](https://www.youtube.com/channel/UCUH2DSbsNUz2sW3kBNn4ibw)

### Flutter 기본 자료

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

