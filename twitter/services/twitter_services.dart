import 'package:flutter_application_1/twitter/model/twitter_model.dart';
// import 'package:twitter/models/twitter_db.dart';

class TwitterService {
  List<TwitterDB> getTweet() {
    List<TwitterDB> tweets = [
      TwitterDB(
        'https://sm.askmen.com/t/askmen_in/article/f/facebook-p/facebook-profile-picture-affects-chances-of-gettin_fr3n.1200.jpg',
        'daily_quotes@123',
        'quotes',
        '4',
        'Quoate of the day',
        '50',
        '10 ',
        '7',
        '3',
        postImageURL:
            'https://sm.askmen.com/t/askmen_in/article/f/facebook-p/facebook-profile-picture-affects-chances-of-gettin_fr3n.1200.jpg',
      ),
      TwitterDB(
        'https://th.bing.com/th/id/OIP.u5FXGNMuIWLUWBSkLPxTXwHaGP?w=206&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7',
        'news@23',
        'News',
        '9',
        """
The Hindu provides this look at the life and career of European Union president Ursula von der Leyen. Today Leyen is one of the prominent leaders in the European Union, and leads the fight against the Russian invasion of Ukraine. Leyen has visited places destroyed in the Russian invasion such as Bucha and talked to refugees, mostly women and children She has stated on Twitter after proposing a complete ban on Russian crude oil to Europe-""",
        '205',
        '500 ',
        '500',
        '100',
        postImageURL:
            'https://pbs.twimg.com/media/FRY2bgKVkAArI9L?format=jpg&name=small',
      ),
      TwitterDB(
        'https://th.bing.com/th/id/OIP.TmYEVe_qXSKefdE8ksZtXgHaIU?pid=ImgDet&rs=1',
        'Kangna_ranaut',
        'k_ranaut',
        '2',
        'Kangana Ranaut is an Indian actress and filmmaker who works in Hindi films. Known for her versatility and portrayal of strong women in female-centric films, she has been described in the media as one of India',
        '2',
        '2 ',
        '5',
        '1',
        // postImageURL: 'https://www.bing.com/th?id=A6a3c42d8e0646df9ffaacf8f90a8fef8&w=115&h=87&o=6&oif=webp&pid=SANGAM',
      ),
     
    ];
    return tweets;
  }
}
