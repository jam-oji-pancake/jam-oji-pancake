{"filter":false,"title":"routes.rb","tooltip":"/naganocake/config/routes.rb","undoManager":{"mark":5,"position":5,"stack":[[{"start":{"row":11,"column":2},"end":{"row":11,"column":15},"action":"remove","lines":["scope module:"],"id":39,"ignore":true},{"start":{"row":11,"column":2},"end":{"row":11,"column":11},"action":"insert","lines":["namespace"]},{"start":{"row":12,"column":3},"end":{"row":13,"column":5},"action":"remove","lines":[" resources :items, only: [:index, :show ]","    #"]},{"start":{"row":13,"column":3},"end":{"row":13,"column":5},"action":"remove","lines":[" #"]}],[{"start":{"row":2,"column":2},"end":{"row":2,"column":4},"action":"insert","lines":["# "],"id":40,"ignore":true},{"start":{"row":5,"column":0},"end":{"row":6,"column":0},"action":"insert","lines":["  ",""]},{"start":{"row":6,"column":38},"end":{"row":14,"column":15},"action":"remove","lines":["show',as:'mypage'","","  namespace :public do","    get 'carts/my_cart'","  end","","  namespace :public do","    get 'items/index'","    get 'items/"]},{"start":{"row":6,"column":38},"end":{"row":25,"column":38},"action":"insert","lines":["mypage',as:'mypage'","  get '/mypage/edit',to: 'public/customers#mypage_edit',as:'mypage_edit'","  get '/mypage/caution',to: 'public/customers#mypage_caution',as:'mypage_cation'","  ","  patch '/mypage/taikai' => 'public/customers#taikai', as: 'customer_taikai'","  put '/mypage/taikai'=> 'public/customers#taikai'","  ","  get '/select',to: 'public/orders#select',as:'select'","  get '/confirm',to: 'public/orders#confirm',as:'confirm'","  get '/finish',to: 'public/orders#finish',as:'finish'","  ","  ","","  namespace :public do","    get 'carts/my_cart'","  end","","","  scope module: :public do","    resources :items, only: [:index, :"]},{"start":{"row":25,"column":42},"end":{"row":25,"column":43},"action":"remove","lines":["'"]},{"start":{"row":25,"column":42},"end":{"row":25,"column":44},"action":"insert","lines":[" ]"]},{"start":{"row":37,"column":2},"end":{"row":37,"column":11},"action":"remove","lines":["namespace"]},{"start":{"row":37,"column":2},"end":{"row":37,"column":15},"action":"insert","lines":["scope module:"]},{"start":{"row":38,"column":4},"end":{"row":40,"column":27},"action":"remove","lines":["get 'customers/show'","    get 'customers/edit'","    get 'customers/caution'"]},{"start":{"row":38,"column":4},"end":{"row":42,"column":44},"action":"insert","lines":["resources :customers, only: [:update]","  end","  ","  scope module: :public do","    resources :orders, only: [:index, :show]"]},{"start":{"row":45,"column":0},"end":{"row":45,"column":1},"action":"remove","lines":[" "]},{"start":{"row":45,"column":0},"end":{"row":46,"column":3},"action":"insert","lines":["","  #"]},{"start":{"row":47,"column":1},"end":{"row":47,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":48,"column":1},"end":{"row":48,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":49,"column":2},"end":{"row":49,"column":3},"action":"insert","lines":["#"]},{"start":{"row":49,"column":5},"end":{"row":49,"column":6},"action":"insert","lines":[" "]},{"start":{"row":50,"column":2},"end":{"row":50,"column":3},"action":"insert","lines":["#"]},{"start":{"row":50,"column":5},"end":{"row":50,"column":6},"action":"insert","lines":[" "]},{"start":{"row":51,"column":1},"end":{"row":51,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":52,"column":1},"end":{"row":52,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":84,"column":0},"end":{"row":84,"column":1},"action":"remove","lines":["#"]},{"start":{"row":84,"column":17},"end":{"row":84,"column":18},"action":"insert","lines":["o"]},{"start":{"row":85,"column":0},"end":{"row":85,"column":1},"action":"remove","lines":["#"]},{"start":{"row":85,"column":30},"end":{"row":85,"column":31},"action":"insert","lines":["o"]},{"start":{"row":86,"column":0},"end":{"row":86,"column":1},"action":"remove","lines":["#"]},{"start":{"row":86,"column":30},"end":{"row":86,"column":31},"action":"insert","lines":["o"]},{"start":{"row":87,"column":0},"end":{"row":87,"column":1},"action":"remove","lines":["#"]},{"start":{"row":87,"column":30},"end":{"row":87,"column":31},"action":"insert","lines":["o"]},{"start":{"row":88,"column":0},"end":{"row":88,"column":1},"action":"remove","lines":["#"]}],[{"start":{"row":2,"column":2},"end":{"row":2,"column":4},"action":"remove","lines":["# "],"id":41,"ignore":true},{"start":{"row":5,"column":0},"end":{"row":6,"column":0},"action":"remove","lines":["  ",""]},{"start":{"row":5,"column":38},"end":{"row":10,"column":50},"action":"remove","lines":["mypage',as:'mypage'","  get '/mypage/edit',to: 'public/customers#mypage_edit',as:'mypage_edit'","  get '/mypage/caution',to: 'public/customers#mypage_caution',as:'mypage_cation'","  ","  patch '/mypage/taikai' => 'public/customers#taikai', as: 'customer_taikai'","  put '/mypage/taikai'=> 'public/customers#taikai'"]},{"start":{"row":5,"column":38},"end":{"row":7,"column":22},"action":"insert","lines":["show',as:'mypage'","","  namespace :public do"]},{"start":{"row":8,"column":2},"end":{"row":9,"column":0},"action":"remove","lines":["",""]},{"start":{"row":8,"column":9},"end":{"row":20,"column":38},"action":"remove","lines":["/select',to: 'public/orders#select',as:'select'","  get '/confirm',to: 'public/orders#confirm',as:'confirm'","  get '/finish',to: 'public/orders#finish',as:'finish'","  ","  ","","  namespace :public do","    get 'carts/my_cart'","  end","","","  scope module: :public do","    resources :items, only: [:index, :"]},{"start":{"row":8,"column":9},"end":{"row":13,"column":15},"action":"insert","lines":["carts/my_cart'","  end","","  namespace :public do","    get 'items/index'","    get 'items/"]},{"start":{"row":13,"column":19},"end":{"row":13,"column":21},"action":"remove","lines":[" ]"]},{"start":{"row":13,"column":19},"end":{"row":13,"column":20},"action":"insert","lines":["'"]},{"start":{"row":25,"column":2},"end":{"row":25,"column":15},"action":"remove","lines":["scope module:"]},{"start":{"row":25,"column":2},"end":{"row":25,"column":11},"action":"insert","lines":["namespace"]},{"start":{"row":26,"column":4},"end":{"row":30,"column":44},"action":"remove","lines":["resources :customers, only: [:update]","  end","  ","  scope module: :public do","    resources :orders, only: [:index, :show]"]},{"start":{"row":26,"column":4},"end":{"row":28,"column":27},"action":"insert","lines":["get 'customers/show'","    get 'customers/edit'","    get 'customers/caution'"]},{"start":{"row":31,"column":0},"end":{"row":32,"column":3},"action":"remove","lines":["","  #"]},{"start":{"row":31,"column":0},"end":{"row":31,"column":1},"action":"insert","lines":[" "]},{"start":{"row":32,"column":1},"end":{"row":32,"column":3},"action":"remove","lines":[" #"]},{"start":{"row":33,"column":1},"end":{"row":33,"column":3},"action":"remove","lines":[" #"]},{"start":{"row":34,"column":2},"end":{"row":34,"column":3},"action":"remove","lines":["#"]},{"start":{"row":34,"column":4},"end":{"row":34,"column":5},"action":"remove","lines":[" "]},{"start":{"row":35,"column":2},"end":{"row":35,"column":3},"action":"remove","lines":["#"]},{"start":{"row":35,"column":4},"end":{"row":35,"column":5},"action":"remove","lines":[" "]},{"start":{"row":36,"column":1},"end":{"row":36,"column":3},"action":"remove","lines":[" #"]},{"start":{"row":37,"column":1},"end":{"row":37,"column":3},"action":"remove","lines":[" #"]},{"start":{"row":69,"column":0},"end":{"row":69,"column":1},"action":"insert","lines":["#"]},{"start":{"row":69,"column":18},"end":{"row":69,"column":19},"action":"remove","lines":["o"]},{"start":{"row":70,"column":0},"end":{"row":70,"column":1},"action":"insert","lines":["#"]},{"start":{"row":70,"column":31},"end":{"row":70,"column":32},"action":"remove","lines":["o"]},{"start":{"row":71,"column":0},"end":{"row":71,"column":1},"action":"insert","lines":["#"]},{"start":{"row":71,"column":31},"end":{"row":71,"column":32},"action":"remove","lines":["o"]},{"start":{"row":72,"column":0},"end":{"row":72,"column":1},"action":"insert","lines":["#"]},{"start":{"row":72,"column":31},"end":{"row":72,"column":32},"action":"remove","lines":["o"]},{"start":{"row":73,"column":0},"end":{"row":73,"column":1},"action":"insert","lines":["#"]}],[{"start":{"row":2,"column":2},"end":{"row":2,"column":4},"action":"insert","lines":["# "],"id":42,"ignore":true},{"start":{"row":5,"column":0},"end":{"row":6,"column":0},"action":"insert","lines":["  ",""]},{"start":{"row":6,"column":38},"end":{"row":14,"column":15},"action":"remove","lines":["show',as:'mypage'","","  namespace :public do","    get 'carts/my_cart'","  end","","  namespace :public do","    get 'items/index'","    get 'items/"]},{"start":{"row":6,"column":38},"end":{"row":25,"column":38},"action":"insert","lines":["mypage',as:'mypage'","  get '/mypage/edit',to: 'public/customers#mypage_edit',as:'mypage_edit'","  get '/mypage/caution',to: 'public/customers#mypage_caution',as:'mypage_cation'","  ","  patch '/mypage/taikai' => 'public/customers#taikai', as: 'customer_taikai'","  put '/mypage/taikai'=> 'public/customers#taikai'","  ","  get '/select',to: 'public/orders#select',as:'select'","  get '/confirm',to: 'public/orders#confirm',as:'confirm'","  get '/finish',to: 'public/orders#finish',as:'finish'","  ","  ","","  namespace :public do","    get 'carts/my_cart'","  end","","","  scope module: :public do","    resources :items, only: [:index, :"]},{"start":{"row":25,"column":42},"end":{"row":25,"column":43},"action":"remove","lines":["'"]},{"start":{"row":25,"column":42},"end":{"row":25,"column":44},"action":"insert","lines":[" ]"]},{"start":{"row":37,"column":2},"end":{"row":37,"column":11},"action":"remove","lines":["namespace"]},{"start":{"row":37,"column":2},"end":{"row":37,"column":15},"action":"insert","lines":["scope module:"]},{"start":{"row":38,"column":4},"end":{"row":40,"column":27},"action":"remove","lines":["get 'customers/show'","    get 'customers/edit'","    get 'customers/caution'"]},{"start":{"row":38,"column":4},"end":{"row":42,"column":44},"action":"insert","lines":["resources :customers, only: [:update]","  end","  ","  scope module: :public do","    resources :orders, only: [:index, :show]"]},{"start":{"row":45,"column":0},"end":{"row":45,"column":1},"action":"remove","lines":[" "]},{"start":{"row":45,"column":0},"end":{"row":46,"column":3},"action":"insert","lines":["","  #"]},{"start":{"row":47,"column":1},"end":{"row":47,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":48,"column":1},"end":{"row":48,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":49,"column":2},"end":{"row":49,"column":3},"action":"insert","lines":["#"]},{"start":{"row":49,"column":5},"end":{"row":49,"column":6},"action":"insert","lines":[" "]},{"start":{"row":50,"column":2},"end":{"row":50,"column":3},"action":"insert","lines":["#"]},{"start":{"row":50,"column":5},"end":{"row":50,"column":6},"action":"insert","lines":[" "]},{"start":{"row":51,"column":1},"end":{"row":51,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":52,"column":1},"end":{"row":52,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":84,"column":0},"end":{"row":84,"column":1},"action":"remove","lines":["#"]},{"start":{"row":84,"column":17},"end":{"row":84,"column":18},"action":"insert","lines":["o"]},{"start":{"row":85,"column":0},"end":{"row":85,"column":1},"action":"remove","lines":["#"]},{"start":{"row":85,"column":30},"end":{"row":85,"column":31},"action":"insert","lines":["o"]},{"start":{"row":86,"column":0},"end":{"row":86,"column":1},"action":"remove","lines":["#"]},{"start":{"row":86,"column":30},"end":{"row":86,"column":31},"action":"insert","lines":["o"]},{"start":{"row":87,"column":0},"end":{"row":87,"column":1},"action":"remove","lines":["#"]},{"start":{"row":87,"column":30},"end":{"row":87,"column":31},"action":"insert","lines":["o"]},{"start":{"row":88,"column":0},"end":{"row":88,"column":1},"action":"remove","lines":["#"]}],[{"start":{"row":2,"column":2},"end":{"row":2,"column":4},"action":"remove","lines":["# "],"id":43,"ignore":true},{"start":{"row":5,"column":0},"end":{"row":6,"column":0},"action":"remove","lines":["  ",""]},{"start":{"row":5,"column":38},"end":{"row":9,"column":52},"action":"remove","lines":["mypage',as:'mypage'","  get '/mypage/edit',to: 'public/customers#mypage_edit',as:'mypage_edit'","  get '/mypage/caution',to: 'public/customers#mypage_caution',as:'mypage_cation'","  ","  patch '/mypage/taikai' => 'public/customers#taikai"]},{"start":{"row":5,"column":38},"end":{"row":5,"column":42},"action":"insert","lines":["show"]},{"start":{"row":5,"column":44},"end":{"row":5,"column":45},"action":"remove","lines":[" "]},{"start":{"row":5,"column":47},"end":{"row":12,"column":2},"action":"remove","lines":[" 'customer_taikai'","  put '/mypage/taikai'=> 'public/customers#taikai'","  ","  get '/select',to: 'public/orders#select',as:'select'","  get '/confirm',to: 'public/orders#confirm',as:'confirm'","  get '/finish',to: 'public/orders#finish',as:'finish'","  ","  "]},{"start":{"row":5,"column":47},"end":{"row":5,"column":55},"action":"insert","lines":["'mypage'"]},{"start":{"row":11,"column":0},"end":{"row":12,"column":0},"action":"remove","lines":["",""]},{"start":{"row":13,"column":0},"end":{"row":15,"column":0},"action":"insert","lines":["    # get 'items/index'","    # get 'items/show'",""]},{"start":{"row":26,"column":2},"end":{"row":26,"column":15},"action":"remove","lines":["scope module:"]},{"start":{"row":26,"column":2},"end":{"row":26,"column":11},"action":"insert","lines":["namespace"]},{"start":{"row":27,"column":4},"end":{"row":31,"column":44},"action":"remove","lines":["resources :customers, only: [:update]","  end","  ","  scope module: :public do","    resources :orders, only: [:index, :show]"]},{"start":{"row":27,"column":4},"end":{"row":29,"column":27},"action":"insert","lines":["get 'customers/show'","    get 'customers/edit'","    get 'customers/caution'"]},{"start":{"row":32,"column":0},"end":{"row":33,"column":0},"action":"remove","lines":["",""]},{"start":{"row":32,"column":1},"end":{"row":32,"column":3},"action":"remove","lines":[" #"]},{"start":{"row":33,"column":2},"end":{"row":33,"column":3},"action":"remove","lines":["#"]},{"start":{"row":33,"column":4},"end":{"row":33,"column":5},"action":"remove","lines":[" "]},{"start":{"row":34,"column":2},"end":{"row":34,"column":3},"action":"remove","lines":["#"]},{"start":{"row":34,"column":4},"end":{"row":34,"column":5},"action":"remove","lines":[" "]},{"start":{"row":35,"column":1},"end":{"row":35,"column":3},"action":"remove","lines":[" #"]},{"start":{"row":36,"column":1},"end":{"row":36,"column":3},"action":"remove","lines":[" #"]},{"start":{"row":37,"column":1},"end":{"row":37,"column":3},"action":"remove","lines":[" #"]},{"start":{"row":38,"column":1},"end":{"row":38,"column":3},"action":"remove","lines":[" #"]},{"start":{"row":70,"column":0},"end":{"row":70,"column":1},"action":"insert","lines":["#"]},{"start":{"row":70,"column":18},"end":{"row":70,"column":19},"action":"remove","lines":["o"]},{"start":{"row":71,"column":0},"end":{"row":71,"column":1},"action":"insert","lines":["#"]},{"start":{"row":71,"column":31},"end":{"row":71,"column":32},"action":"remove","lines":["o"]},{"start":{"row":72,"column":0},"end":{"row":72,"column":1},"action":"insert","lines":["#"]},{"start":{"row":72,"column":31},"end":{"row":72,"column":32},"action":"remove","lines":["o"]},{"start":{"row":73,"column":0},"end":{"row":73,"column":1},"action":"insert","lines":["#"]},{"start":{"row":73,"column":31},"end":{"row":73,"column":32},"action":"remove","lines":["o"]},{"start":{"row":74,"column":0},"end":{"row":74,"column":1},"action":"insert","lines":["#"]}],[{"start":{"row":2,"column":2},"end":{"row":2,"column":4},"action":"insert","lines":["# "],"id":44,"ignore":true},{"start":{"row":5,"column":0},"end":{"row":6,"column":0},"action":"insert","lines":["  ",""]},{"start":{"row":6,"column":38},"end":{"row":6,"column":42},"action":"remove","lines":["show"]},{"start":{"row":6,"column":38},"end":{"row":10,"column":52},"action":"insert","lines":["mypage',as:'mypage'","  get '/mypage/edit',to: 'public/customers#mypage_edit',as:'mypage_edit'","  get '/mypage/caution',to: 'public/customers#mypage_caution',as:'mypage_cation'","  ","  patch '/mypage/taikai' => 'public/customers#taikai"]},{"start":{"row":10,"column":54},"end":{"row":10,"column":55},"action":"insert","lines":[" "]},{"start":{"row":10,"column":58},"end":{"row":10,"column":66},"action":"remove","lines":["'mypage'"]},{"start":{"row":10,"column":58},"end":{"row":17,"column":2},"action":"insert","lines":[" 'customer_taikai'","  put '/mypage/taikai'=> 'public/customers#taikai'","  ","  get '/select',to: 'public/orders#select',as:'select'","  get '/confirm',to: 'public/orders#confirm',as:'confirm'","  get '/finish',to: 'public/orders#finish',as:'finish'","  ","  "]},{"start":{"row":23,"column":0},"end":{"row":24,"column":0},"action":"insert","lines":["",""]},{"start":{"row":26,"column":0},"end":{"row":28,"column":0},"action":"remove","lines":["    # get 'items/index'","    # get 'items/show'",""]},{"start":{"row":37,"column":2},"end":{"row":37,"column":11},"action":"remove","lines":["namespace"]},{"start":{"row":37,"column":2},"end":{"row":37,"column":15},"action":"insert","lines":["scope module:"]},{"start":{"row":38,"column":4},"end":{"row":40,"column":27},"action":"remove","lines":["get 'customers/show'","    get 'customers/edit'","    get 'customers/caution'"]},{"start":{"row":38,"column":4},"end":{"row":42,"column":44},"action":"insert","lines":["resources :customers, only: [:update]","  end","  ","  scope module: :public do","    resources :orders, only: [:index, :show]"]},{"start":{"row":45,"column":0},"end":{"row":46,"column":0},"action":"insert","lines":["",""]},{"start":{"row":46,"column":1},"end":{"row":46,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":47,"column":2},"end":{"row":47,"column":3},"action":"insert","lines":["#"]},{"start":{"row":47,"column":5},"end":{"row":47,"column":6},"action":"insert","lines":[" "]},{"start":{"row":48,"column":2},"end":{"row":48,"column":3},"action":"insert","lines":["#"]},{"start":{"row":48,"column":5},"end":{"row":48,"column":6},"action":"insert","lines":[" "]},{"start":{"row":49,"column":1},"end":{"row":49,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":50,"column":1},"end":{"row":50,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":51,"column":1},"end":{"row":51,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":52,"column":1},"end":{"row":52,"column":3},"action":"insert","lines":[" #"]},{"start":{"row":84,"column":0},"end":{"row":84,"column":1},"action":"remove","lines":["#"]},{"start":{"row":84,"column":17},"end":{"row":84,"column":18},"action":"insert","lines":["o"]},{"start":{"row":85,"column":0},"end":{"row":85,"column":1},"action":"remove","lines":["#"]},{"start":{"row":85,"column":30},"end":{"row":85,"column":31},"action":"insert","lines":["o"]},{"start":{"row":86,"column":0},"end":{"row":86,"column":1},"action":"remove","lines":["#"]},{"start":{"row":86,"column":30},"end":{"row":86,"column":31},"action":"insert","lines":["o"]},{"start":{"row":87,"column":0},"end":{"row":87,"column":1},"action":"remove","lines":["#"]},{"start":{"row":87,"column":30},"end":{"row":87,"column":31},"action":"insert","lines":["o"]},{"start":{"row":88,"column":0},"end":{"row":88,"column":1},"action":"remove","lines":["#"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":93,"column":0},"end":{"row":93,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1626755846732,"hash":"6b22d68798a8b8b83399a72eebec73b503e79ac1"}