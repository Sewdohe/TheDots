function find_item -a item_name -d "Finds an item in the Mr.Cigars Inventory"
      sqlcmd -S 192.168.0.241\\SL19 -d Shakespeare -U bas2 -P bas2 -C -Q "SELECT ObjId, Name, Num, ListPrice FROM Shakespeare.cdr.Item WHERE Item.Name LIKE '%$argv[1]%'"
end
