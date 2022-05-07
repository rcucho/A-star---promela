#define TAM 3
int row_num;
int i;
int j;
typedef Node{
int x;
int y;
int h;
int w;
int g;
}

Node openNode;
int column_num;

typedef Matriz{
    byte maze_r[TAM]
}
Matriz maze[TAM];
int cost_heuristic;
int rand_x;

active proctype randnr(){    
		byte nr;
		do
		:: nr++
		:: nr--
		:: break
		od;
		rand_x = nr;	
	}

active proctype heuristic(int x; int y; int xf; int yf){
	int tx = x - xf;
	int ty = y -yf;
	if :: (tx < 0) ->
		tx = tx * (-1);
	else ->
	fi;
	if ::(ty <0)  ->
		ty = ty *(-1);
	else ->
	fi;
	cost_heuristic = tx +  ty;
}

active proctype findTheWay(int xf; int yf; Node currentNode; int index; chan doChan; chan doChannelFound ){
	int w = currentNode.w +1 ;
	int x = currentNode.x;
	int y = currentNode.y; 

	maze[x].maze_r[y]  = 2
}

active proctype addObstacles (int x; int y; int xf; int yf; int nroObstacles){
	int currentNroObsacles = 0;
	do:: (true)->
		if :: (currentNroObsacles >= nroObstacles) ->

		::else ->
		fi;
		run randnr(); 
		int obst_x = rand_x;
		run randnr(); 
		int obst_y = rand_x;
		

	::else -> break;
	od;	
}

init {
	Matriz maze_f[TAM];
	i = 0;
    	j = 0;
	do :: (i < TAM) ->
		do:: (j < TAM)->
            			if :: (i == 0) || (i == TAM-1) || (j ==0) || (j == TAM-1) ->
                				maze_f[i].maze_r[j] = 1;
            			::else ->
            			fi;
            			j = j + 1;
        		::else ->
            			j=0;
            			break;
        		od;
			
		i = i+1;
	:: else -> break;
	od;
}
