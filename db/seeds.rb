# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
   User.create(name: 'Anna', email: 'anna@gmail.com', password: 'anna1', password_confirmation: 'anna1', personality: 'Romantic', reason: 'For Fun', international: 'Yes', companion: '2-3', budget: '$5,000', role: 'planner' )
   User.create(name: 'Sara', email: 'sara@gmail.com', password: 'sara1', password_confirmation: 'sara1', personality: 'Romantic', reason: 'Honeymoon', international: 'No', companion: '1-2', budget: '$1,000', role: 'goer' )
   User.create(name: 'Elle', email: 'elle@gmail.com', password: 'elle1', password_confirmation: 'elle1', personality: 'Adventurous', reason: 'For Fun', international: 'Yes', companion: '3-4', budget: '$5,000', role: 'goer' )
   User.create(name: 'May', email: 'may@gmail.com', password: 'may1', password_confirmation: 'may1', personality: 'Adventurous', reason: 'For Tourism', international: 'Yes', companion: '5+', budget: '$10,000', role: 'goer' )
   User.create(name: 'Luke', email: 'luke@gmail.com', password: 'luke1', password_confirmation: 'luke1', personality: 'Intellectual', reason: 'For Tourism', international: 'No', companion: '1-2', budget: '$10,000', role: 'goer' )
   User.create(name: 'Tommy', email: 'tommy@gmail.com', password: 'tommy1', password_confirmation: 'tommy1', personality: 'Intellectual', reason: 'Family Trip', international: 'No', companion: '2-3', budget: '$7,000', role: 'goer' )
   User.create(name: 'Chris', email: 'chris@gmail.com', password: 'chris1', password_confirmation: 'chris1', personality: 'Romantic', reason: 'For Fun', international: 'Yes', companion: '2-3', budget: '$5,000', role: 'planner' )
   User.create(name: 'Steph', email: 'steph@gmail.com', password: 'steph1', password_confirmation: 'steph1', personality: 'Intellectual', reason: 'For Tourism', international: 'Yes', companion: '2-3', budget: '$5,000', role: 'goer' )
   User.create(name: 'Will', email: 'will@gmail.com', password: 'will1', password_confirmation: 'will1', personality: 'Romantic', reason: 'For Fun', international: 'Yes', companion: '2-3', budget: '$10,000', role: 'goer' )
   User.create(name: 'Sam', email: 'sam@gmail.com', password: 'sam1', password_confirmation: 'sam1', personality: 'Adventurous', reason: 'For Fun', international: 'No', companion: '1-2', budget: '$1,000', role: 'goer' )
   User.create(name: 'Dan', email: 'dan@gmail.com', password: 'dan1', password_confirmation: 'dan1', personality: 'Romantic', reason: 'Honeymoon', international: 'No', companion: '1-2', budget: '$7,000', role: 'planner' )
   User.create(name: 'Julia', email: 'julia@gmail.com', password: 'julia1', password_confirmation: 'julia1', personality: 'Romantic', reason: 'Cleansing Time', international: 'Yes', companion: '2-3', budget: '$5,000', role: 'planner' )
   User.create(name: 'Kathy', email: 'kathy@gmail.com', password: 'kathy1', password_confirmation: 'kathy1', personality: 'Adventurous', reason: 'Cleansing Time', international: 'Yes', companion: '1-2', budget: '$5,000', role: 'planner' )
   User.create(name: 'Milly', email: 'milly@gmail.com', password: 'milly1', password_confirmation: 'milly1', personality: 'Romantic', reason: 'For Tourism', international: 'Yes', companion: '2-3', budget: '$5,000', role: 'planner' )
   User.create(name: 'Arya', email: 'arya@gmail.com', password: 'arya1', password_confirmation: 'arya1', personality: 'Adventurous', reason: 'For Fun', international: 'Yes', companion: '1-2', budget: '$10,000', role: 'planner' )
   User.create(name: 'Sansa', email: 'sansa@gmail.com', password: 'sansa1', password_confirmation: 'sansa1', personality: 'Intellectual', reason: 'Family Trip', international: 'Yes', companion: '2-3', budget: '$10,000', role: 'admin' )
   User.create(name: 'Dany', email: 'dany@gmail.com', password: 'dany1', password_confirmation: 'dany1', personality: 'Intellectual', reason: 'Family Trip', international: 'Yes', companion: '1-2', budget: '$10,000', role: 'admin' )
   User.create(name: 'Jon', email: 'jon@gmail.com', password: 'jon1', password_confirmation: 'jon1', personality: 'Intellectual', reason: 'Family Trip', international: 'Yes', companion: '1-2', budget: '$10,000', role: 'admin' )

   Category.create(id: 1, name: 'Summer')
   Category.create(id: 2, name: 'Winter')
   Category.create(id: 3, name: 'Honeymoon')
   Category.create(id: 4, name: 'Family')
   Category.create(id: 5, name: 'Asia')
   Category.create(id: 6, name: 'Europe')
   Category.create(id: 7, name: 'Beach')
   Category.create(id: 8, name: 'National')
   Category.create(id: 9, name: 'Overseas')
   Category.create(id: 10, name: 'Zen')
   Category.create(id: 11, name: 'Scenic')
   Category.create(id: 12, name: 'Extreme')
   Category.create(id: 13, name: 'Roadtrip')
   Category.create(id: 14, name: 'Foodie')
   Category.create(id: 15, name: 'Mexico')
   Category.create(id: 16, name: 'Party')
   Category.create(id: 17, name: 'City Vibes')

   Trip.create(name: 'Miami Weekend', content: 'Lorem ipsum dolor sit amet, iisque atomorum similique nec id. Et erat aliquid vel, habemus commune reprimique id vis. An qui debitis offendit, assum congue concludaturque in sed, nec paulo consul ex. Usu in quot populo fuisset, id vis tamquam equidem detracto. At adversarium deterruisset mei, ex vim agam singulis qualisque, nec laudem alterum ne.
   Detraxit necessitatibus vel ut, per id facete tractatos, has meliore sadipscing ad. Id ius errem recteque adolescens. Pro tota neglegentur no, usu soleat everti molestiae an. Ea nec etiam habemus appellantur.
   No mea pertinax postulant, ne solum legendos adolescens nam, quod ignota ad mei. Ei duo facer suscipit. Mea ut laudem scripserit, vim ei dicit salutandi. Periculis interpretaris ea est, sit te illud affert corrumpit. Ne dolor accusam vel. Tale tantas scripta ius te, numquam luptatum dignissim vim ex, aliquam eruditi pertinacia no nam.
   Nec latine petentium no. Mei solet feugait at, nam ut affert veritus vivendo. Ius blandit scribentur ad, cibo causae quaestio id has, cu mandamus aliquando cum. Mel sumo nibh oporteat ea, option ocurreret vim cu, tota eligendi mei id. An quo urbanitas torquatos expetendis, homero honestatis vis id.
   Scripta aliquid at ius. Cu inciderint consequuntur sit, est at erat harum affert, usu et aeque vidisse. Torquatos democritum duo ea, ut qui doctus mandamus, usu debet delenit ne. Ut quis mucius eum, hinc efficiantur ad vel. Vis cu animal dissentiet, vix ei vide saperet facilisi.',
    user_id: 2, category_ids: [7, 8, 1])

    Trip.create(name: 'Hawaii Getaway', content: 'Lorem ipsum dolor sit amet, iisque atomorum similique nec id. Et erat aliquid vel, habemus commune reprimique id vis. An qui debitis offendit, assum congue concludaturque in sed, nec paulo consul ex. Usu in quot populo fuisset, id vis tamquam equidem detracto. At adversarium deterruisset mei, ex vim agam singulis qualisque, nec laudem alterum ne.
    Detraxit necessitatibus vel ut, per id facete tractatos, has meliore sadipscing ad. Id ius errem recteque adolescens. Pro tota neglegentur no, usu soleat everti molestiae an. Ea nec etiam habemus appellantur.
    No mea pertinax postulant, ne solum legendos adolescens nam, quod ignota ad mei. Ei duo facer suscipit. Mea ut laudem scripserit, vim ei dicit salutandi. Periculis interpretaris ea est, sit te illud affert corrumpit. Ne dolor accusam vel. Tale tantas scripta ius te, numquam luptatum dignissim vim ex, aliquam eruditi pertinacia no nam.
    Nec latine petentium no. Mei solet feugait at, nam ut affert veritus vivendo. Ius blandit scribentur ad, cibo causae quaestio id has, cu mandamus aliquando cum. Mel sumo nibh oporteat ea, option ocurreret vim cu, tota eligendi mei id. An quo urbanitas torquatos expetendis, homero honestatis vis id.
    Scripta aliquid at ius. Cu inciderint consequuntur sit, est at erat harum affert, usu et aeque vidisse. Torquatos democritum duo ea, ut qui doctus mandamus, usu debet delenit ne. Ut quis mucius eum, hinc efficiantur ad vel. Vis cu animal dissentiet, vix ei vide saperet facilisi.',
     user_id: 8, category_ids: [7,1,9])

     Trip.create(name: 'Tokyo', content: 'Lorem ipsum dolor sit amet, iisque atomorum similique nec id. Et erat aliquid vel, habemus commune reprimique id vis. An qui debitis offendit, assum congue concludaturque in sed, nec paulo consul ex. Usu in quot populo fuisset, id vis tamquam equidem detracto. At adversarium deterruisset mei, ex vim agam singulis qualisque, nec laudem alterum ne.
     Detraxit necessitatibus vel ut, per id facete tractatos, has meliore sadipscing ad. Id ius errem recteque adolescens. Pro tota neglegentur no, usu soleat everti molestiae an. Ea nec etiam habemus appellantur.
     No mea pertinax postulant, ne solum legendos adolescens nam, quod ignota ad mei. Ei duo facer suscipit. Mea ut laudem scripserit, vim ei dicit salutandi. Periculis interpretaris ea est, sit te illud affert corrumpit. Ne dolor accusam vel. Tale tantas scripta ius te, numquam luptatum dignissim vim ex, aliquam eruditi pertinacia no nam.
     Nec latine petentium no. Mei solet feugait at, nam ut affert veritus vivendo. Ius blandit scribentur ad, cibo causae quaestio id has, cu mandamus aliquando cum. Mel sumo nibh oporteat ea, option ocurreret vim cu, tota eligendi mei id. An quo urbanitas torquatos expetendis, homero honestatis vis id.
     Scripta aliquid at ius. Cu inciderint consequuntur sit, est at erat harum affert, usu et aeque vidisse. Torquatos democritum duo ea, ut qui doctus mandamus, usu debet delenit ne. Ut quis mucius eum, hinc efficiantur ad vel. Vis cu animal dissentiet, vix ei vide saperet facilisi.',
      user_id: 8, category_ids: [5,17,14])

      Trip.create(name: 'To Rome', content: 'Lorem ipsum dolor sit amet, iisque atomorum similique nec id. Et erat aliquid vel, habemus commune reprimique id vis. An qui debitis offendit, assum congue concludaturque in sed, nec paulo consul ex. Usu in quot populo fuisset, id vis tamquam equidem detracto. At adversarium deterruisset mei, ex vim agam singulis qualisque, nec laudem alterum ne.
      Detraxit necessitatibus vel ut, per id facete tractatos, has meliore sadipscing ad. Id ius errem recteque adolescens. Pro tota neglegentur no, usu soleat everti molestiae an. Ea nec etiam habemus appellantur.
      No mea pertinax postulant, ne solum legendos adolescens nam, quod ignota ad mei. Ei duo facer suscipit. Mea ut laudem scripserit, vim ei dicit salutandi. Periculis interpretaris ea est, sit te illud affert corrumpit. Ne dolor accusam vel. Tale tantas scripta ius te, numquam luptatum dignissim vim ex, aliquam eruditi pertinacia no nam.
      Nec latine petentium no. Mei solet feugait at, nam ut affert veritus vivendo. Ius blandit scribentur ad, cibo causae quaestio id has, cu mandamus aliquando cum. Mel sumo nibh oporteat ea, option ocurreret vim cu, tota eligendi mei id. An quo urbanitas torquatos expetendis, homero honestatis vis id.
      Scripta aliquid at ius. Cu inciderint consequuntur sit, est at erat harum affert, usu et aeque vidisse. Torquatos democritum duo ea, ut qui doctus mandamus, usu debet delenit ne. Ut quis mucius eum, hinc efficiantur ad vel. Vis cu animal dissentiet, vix ei vide saperet facilisi.',
       user_id: 12, category_ids: [6,9,11,14])

       Trip.create(name: 'Little Roadtrip', content: 'Lorem ipsum dolor sit amet, iisque atomorum similique nec id. Et erat aliquid vel, habemus commune reprimique id vis. An qui debitis offendit, assum congue concludaturque in sed, nec paulo consul ex. Usu in quot populo fuisset, id vis tamquam equidem detracto. At adversarium deterruisset mei, ex vim agam singulis qualisque, nec laudem alterum ne.
       Detraxit necessitatibus vel ut, per id facete tractatos, has meliore sadipscing ad. Id ius errem recteque adolescens. Pro tota neglegentur no, usu soleat everti molestiae an. Ea nec etiam habemus appellantur.
       No mea pertinax postulant, ne solum legendos adolescens nam, quod ignota ad mei. Ei duo facer suscipit. Mea ut laudem scripserit, vim ei dicit salutandi. Periculis interpretaris ea est, sit te illud affert corrumpit. Ne dolor accusam vel. Tale tantas scripta ius te, numquam luptatum dignissim vim ex, aliquam eruditi pertinacia no nam.
       Nec latine petentium no. Mei solet feugait at, nam ut affert veritus vivendo. Ius blandit scribentur ad, cibo causae quaestio id has, cu mandamus aliquando cum. Mel sumo nibh oporteat ea, option ocurreret vim cu, tota eligendi mei id. An quo urbanitas torquatos expetendis, homero honestatis vis id.
       Scripta aliquid at ius. Cu inciderint consequuntur sit, est at erat harum affert, usu et aeque vidisse. Torquatos democritum duo ea, ut qui doctus mandamus, usu debet delenit ne. Ut quis mucius eum, hinc efficiantur ad vel. Vis cu animal dissentiet, vix ei vide saperet facilisi.',
        user_id: 13, category_ids: [13,14,8])

        Trip.create(name: 'I HEART NYC', content: 'Lorem ipsum dolor sit amet, iisque atomorum similique nec id. Et erat aliquid vel, habemus commune reprimique id vis. An qui debitis offendit, assum congue concludaturque in sed, nec paulo consul ex. Usu in quot populo fuisset, id vis tamquam equidem detracto. At adversarium deterruisset mei, ex vim agam singulis qualisque, nec laudem alterum ne.
        Detraxit necessitatibus vel ut, per id facete tractatos, has meliore sadipscing ad. Id ius errem recteque adolescens. Pro tota neglegentur no, usu soleat everti molestiae an. Ea nec etiam habemus appellantur.
        No mea pertinax postulant, ne solum legendos adolescens nam, quod ignota ad mei. Ei duo facer suscipit. Mea ut laudem scripserit, vim ei dicit salutandi. Periculis interpretaris ea est, sit te illud affert corrumpit. Ne dolor accusam vel. Tale tantas scripta ius te, numquam luptatum dignissim vim ex, aliquam eruditi pertinacia no nam.
        Nec latine petentium no. Mei solet feugait at, nam ut affert veritus vivendo. Ius blandit scribentur ad, cibo causae quaestio id has, cu mandamus aliquando cum. Mel sumo nibh oporteat ea, option ocurreret vim cu, tota eligendi mei id. An quo urbanitas torquatos expetendis, homero honestatis vis id.
        Scripta aliquid at ius. Cu inciderint consequuntur sit, est at erat harum affert, usu et aeque vidisse. Torquatos democritum duo ea, ut qui doctus mandamus, usu debet delenit ne. Ut quis mucius eum, hinc efficiantur ad vel. Vis cu animal dissentiet, vix ei vide saperet facilisi.',
         user_id: 14, category_ids: [17,16,8,14])

         Trip.create(name: 'Mexico City', content: 'Lorem ipsum dolor sit amet, iisque atomorum similique nec id. Et erat aliquid vel, habemus commune reprimique id vis. An qui debitis offendit, assum congue concludaturque in sed, nec paulo consul ex. Usu in quot populo fuisset, id vis tamquam equidem detracto. At adversarium deterruisset mei, ex vim agam singulis qualisque, nec laudem alterum ne.
         Detraxit necessitatibus vel ut, per id facete tractatos, has meliore sadipscing ad. Id ius errem recteque adolescens. Pro tota neglegentur no, usu soleat everti molestiae an. Ea nec etiam habemus appellantur.
         No mea pertinax postulant, ne solum legendos adolescens nam, quod ignota ad mei. Ei duo facer suscipit. Mea ut laudem scripserit, vim ei dicit salutandi. Periculis interpretaris ea est, sit te illud affert corrumpit. Ne dolor accusam vel. Tale tantas scripta ius te, numquam luptatum dignissim vim ex, aliquam eruditi pertinacia no nam.
         Nec latine petentium no. Mei solet feugait at, nam ut affert veritus vivendo. Ius blandit scribentur ad, cibo causae quaestio id has, cu mandamus aliquando cum. Mel sumo nibh oporteat ea, option ocurreret vim cu, tota eligendi mei id. An quo urbanitas torquatos expetendis, homero honestatis vis id.
         Scripta aliquid at ius. Cu inciderint consequuntur sit, est at erat harum affert, usu et aeque vidisse. Torquatos democritum duo ea, ut qui doctus mandamus, usu debet delenit ne. Ut quis mucius eum, hinc efficiantur ad vel. Vis cu animal dissentiet, vix ei vide saperet facilisi.',
          user_id: 15, category_ids: [14,4,15])

          Trip.create(name: 'To Mordor', content: 'Lorem ipsum dolor sit amet, iisque atomorum similique nec id. Et erat aliquid vel, habemus commune reprimique id vis. An qui debitis offendit, assum congue concludaturque in sed, nec paulo consul ex. Usu in quot populo fuisset, id vis tamquam equidem detracto. At adversarium deterruisset mei, ex vim agam singulis qualisque, nec laudem alterum ne.
          Detraxit necessitatibus vel ut, per id facete tractatos, has meliore sadipscing ad. Id ius errem recteque adolescens. Pro tota neglegentur no, usu soleat everti molestiae an. Ea nec etiam habemus appellantur.
          No mea pertinax postulant, ne solum legendos adolescens nam, quod ignota ad mei. Ei duo facer suscipit. Mea ut laudem scripserit, vim ei dicit salutandi. Periculis interpretaris ea est, sit te illud affert corrumpit. Ne dolor accusam vel. Tale tantas scripta ius te, numquam luptatum dignissim vim ex, aliquam eruditi pertinacia no nam.
          Nec latine petentium no. Mei solet feugait at, nam ut affert veritus vivendo. Ius blandit scribentur ad, cibo causae quaestio id has, cu mandamus aliquando cum. Mel sumo nibh oporteat ea, option ocurreret vim cu, tota eligendi mei id. An quo urbanitas torquatos expetendis, homero honestatis vis id.
          Scripta aliquid at ius. Cu inciderint consequuntur sit, est at erat harum affert, usu et aeque vidisse. Torquatos democritum duo ea, ut qui doctus mandamus, usu debet delenit ne. Ut quis mucius eum, hinc efficiantur ad vel. Vis cu animal dissentiet, vix ei vide saperet facilisi.',
           user_id: 16, category_ids: [3,12,10])

           Trip.create(name: 'The Artic', content: 'Lorem ipsum dolor sit amet, iisque atomorum similique nec id. Et erat aliquid vel, habemus commune reprimique id vis. An qui debitis offendit, assum congue concludaturque in sed, nec paulo consul ex. Usu in quot populo fuisset, id vis tamquam equidem detracto. At adversarium deterruisset mei, ex vim agam singulis qualisque, nec laudem alterum ne.
           Detraxit necessitatibus vel ut, per id facete tractatos, has meliore sadipscing ad. Id ius errem recteque adolescens. Pro tota neglegentur no, usu soleat everti molestiae an. Ea nec etiam habemus appellantur.
           No mea pertinax postulant, ne solum legendos adolescens nam, quod ignota ad mei. Ei duo facer suscipit. Mea ut laudem scripserit, vim ei dicit salutandi. Periculis interpretaris ea est, sit te illud affert corrumpit. Ne dolor accusam vel. Tale tantas scripta ius te, numquam luptatum dignissim vim ex, aliquam eruditi pertinacia no nam.
           Nec latine petentium no. Mei solet feugait at, nam ut affert veritus vivendo. Ius blandit scribentur ad, cibo causae quaestio id has, cu mandamus aliquando cum. Mel sumo nibh oporteat ea, option ocurreret vim cu, tota eligendi mei id. An quo urbanitas torquatos expetendis, homero honestatis vis id.
           Scripta aliquid at ius. Cu inciderint consequuntur sit, est at erat harum affert, usu et aeque vidisse. Torquatos democritum duo ea, ut qui doctus mandamus, usu debet delenit ne. Ut quis mucius eum, hinc efficiantur ad vel. Vis cu animal dissentiet, vix ei vide saperet facilisi.',
            user_id: 16, category_ids: [3,4,16])
