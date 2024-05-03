function distance = get_distance(city1, city2)
    [raw] = readcell('Distances.xlsx');
    index_list_1 = strcmp(city1,raw(:,1));
    index_list_2 = strcmp(city2,raw(1,:));
    if all(index_list_1 == 0) || all(index_list_2 == 0)
        distance = -1; 
    else
        distance =  raw{(index_list_1 == 1), (index_list_2 == 1)};
end