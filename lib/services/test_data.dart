import 'package:flutter/material.dart';

import '../model/book.dart';
import '../model/section.dart';
import '../model/page.dart';

Book testBook = Book(
  name: 'Snakes vs Cows',
  sections: <Section>[
    Section(
      name: 'First Section',
      label: Icon(Icons.home),
      pages: <Page>[
        Page(
          name: 'First Page',
          content: <Widget>[
            Text('First line'),
            Text('Second line'),
            Text('Third line'),
            Center(
              child: Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                height: 300,
              ),
            ),
          ],
        ),
        Page(
          name: 'First Page',
          content: <Widget>[
            Text('First li2ne'),
            Center(
              child: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1583582941679-75e0d4e76f8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
                height: 500,
              ),
            ),
            Text('LEAVES'),
            Text('LEAFES'),
          ],
        ),
        Page(
          name: 'Page with a Lady',
          content: <Widget>[
            Center(
              child: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1583599377295-f1fc27794f30?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
                height: 600,
              ),
            ),
          ],
        ),
        Page(
          name: 'First 4',
          content: <Widget>[
            Text('Oooooo'),
            Text('Zooom'),
            Text('Outrageous'),
          ],
        ),
        Page(
          name: 'Owl Again',
          content: <Widget>[
            Text('Omaewamou Shindeiru'),
            Center(
              child: Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                height: 300,
              ),
            ),
          ],
        ),
      ],
    ),
    Section(
      name: 'Second Section',
      label: Text('2'),
      pages: <Page>[
        Page(
          name: 'First Page',
          content: <Widget>[
            Text('First line'),
            Text('Second line'),
            Text('Third line'),
          ],
        ),
        Page(
          name: 'Second Page',
          content: <Widget>[
            Text('First li2ne'),
            Text('Second li2ne'),
            Text('Thi2rd line'),
            Center(
              child: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1583593185947-363fb444b930?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80'),
                height: 300,
              ),
            ),
          ],
        ),
        Page(
          name: 'Last Page',
          content: <Widget>[
            Text('Thank you'),
            Text('For playing'),
            Text(
                'Aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
            Center(
              child: Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                height: 300,
              ),
            ),
          ],
        ),
      ],
    ),
    Section(
      name: 'Second Section',
      label: Icon(Icons.pool),
      pages: <Page>[
        Page(
          name: 'Final Section',
          content: <Widget>[
            Center(
              child: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1583444012262-00185bf33cc6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
                height: 700,
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);
