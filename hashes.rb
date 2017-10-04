stocks = { 
    'GM' => 'General Motors',
    'CAT' => 'Caterpillar', 
    'EK' => "Eastman Kodak"
}

purchases = [ 
    [ 'GM', 100, '10-sep-2001', 48 ],
    [ 'CAT', 100, '1-apr-1999', 24 ],
    [ 'GM', 200, '1-jul-1998', 56 ] 
]

aggPurchases = {}

for purchase in purchases
            
    total = purchase[1] * purchase[3]
    #Does the company name key already exist in the report dictionary?
    if aggPurchases.has_key?(stocks[purchase[0]])                
        #If it does, update the total valuation
        aggPurchases[stocks[purchase[0]]] += total
    else                
        #If not, add the new key and set its value
        aggPurchases[stocks[purchase[0]]] =  total
    end     
end

for item in aggPurchases do
    puts "#{item[0]} sold $#{item[1]} "
end
