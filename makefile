

capitalBreak.exe: main.o  debug.o Scene.o GameScene.o character.o  collider.o building.o map.o gang.o CCard.o CPlayer.o  GlobalFunctions.o timer.o
	g++ main.o  debug.o Scene.o GameScene.o character.o  building.o collider.o map.o gang.o CCard.o CPlayer.o  GlobalFunctions.o  timer.o -o capitalBreak.exe -lmingw32 -lSDLmain -lSDL -lSDL_image -lSDL_ttf 

CCard.o: CCard.cpp
	g++ CCard.cpp -c -Wall -g
CPlyaer.o: CPlyaer.cpp
	g++ CPlayer.cpp -c -Wall -g

GlobalFunctions.o: GlobalFunctions.cpp
	g++ GlobalFunctions.cpp -c -Wall -g

stdafx.o: stdafx.cpp
	g++ stdafx.cpp -c -Wall -g

main.o: main.cpp
	g++ main.cpp -c -Wall -g
debug.o: debug.cpp debug.h
	g++ debug.cpp -c -Wall -g

test: Scene.o test.o
	g++ test.o Scene.o -o test.exe -lmingw32 -lSDLmain -lSDL -lSDL_image -lSDL_ttf -lSDL_mixer -g

test.o:  test.cpp
	g++ test.cpp -c -Wall -g
Scene.o: Scene.cpp
	g++ Scene.cpp -c -Wall -g
GameScene.o: GameScene.cpp
	g++ GameScene.cpp -c -Wall -g

character.o: character.cpp
	g++ character.cpp -c -Wall -g
timer.o: Timer.cpp
	g++ Timer.cpp -c -Wall -g -o timer.o
building.o: building.cpp
	g++ building.cpp -c -Wall -g
collider.o: collider.cpp
	g++ collider.cpp -c -Wall -g
map.o: map.cpp
	g++ map.cpp -c -Wall -g
gang.o: gang.cpp
	g++ gang.cpp -c -Wall -g

