http://legacy.datatables.net/usage/server-side

==============================================
правило фильтрации табличных данных:

Пример:
{
	"start":0,
	"length":10,
	"rules":{
		"operation":"AND",
		"conditions":[
			{
				"type":"string",
				"value":"Owl",
				"field":"shift.shift.name",
				"comparison": "eq"
			},{
				"type":"string",
				"value":"XXX",
				"field":"firstName",
				"comparison": "like"
			},
			...
		
		],
		"rules":[
			{
				"operation":"OR",
				"conditions":[
					{
						"type":"string",
						"value":"Owl",
						"field":"shift.shift.name",
						"comparison": "eq"
					},{
						"type":"string",
						"value":"XXX",
						"field":"firstName",
						"comparison": "like"
					},
					...
				
				],
			},{
				...
			},
			...
		] 
	}
}

rules - определяет один уровень набора условий.
conditions - набор условий.
operation - операнд объединяющий набор условий одного уровня.
type - тип поля, к которому присваивается условие сравнения.
value - значение поля для сравнения.
field - название поля для сравнения.
comparison - вид сравнения (например like)

Возможные значения параметра operation: [AND, OR]
Возможные значения параметра comparison: [eq,  gt,  lt,   ne,   isnull,  in, like]