## Unit testing

Testujemy gotowy kod.

1\. Napisać testy do metod `Enumerable#sort_by_freq`,
`Enumerable#sort_distinct_by_freq`, `Enumerable#to_hist`.

Metoda `sort_by_freq` sortuje elementy według liczby
powtórzeń, zaczynając od wartości powtarzających się najrzadziej.

Metoda `Enumerable#to_hist`, dla tablic zwierających stosunkowo
niewiele różnych obiektów wylicza histogram obrazujący częstotliwość
występowań danego obiektu.

```ruby
puts [1,2,3,4,1,2,4,8,1,4,9,16].sort_by_freq.join(", ")
# 3, 8, 9, 16, 2, 2, 1, 1, 1, 4, 4, 4
```
Testy zapisać w plikach *spec/part{1,2}_spec.rb*.


## Podręczne linki

[RSpec documentation](http://rspec.info/):

* [rspec-rails](https://github.com/rspec/rspec-rails)
* [rspec-collection_matchers](https://github.com/rspec/rspec-collection_matchers)
* [rspec-expectations](https://github.com/rspec/rspec-expectations)
* [rspec-core](https://github.com/rspec/rspec-core)
* [rspec-mocks](https://github.com/rspec/rspec-mocks)

Podpinanie aplikacji do [Travisa](https://travis-ci.org/)

* [getting started](http://docs.travis-ci.com/)
* gem *travis-lint*
* [status images](http://docs.travis-ci.com/user/status-images/)

Przykładowy plik *.travis.yml*:

```yaml
language: ruby
rvm:
- 2.1.1
env:
- DB=postgresql
cache: bundler
before_script:
- psql -c "CREATE DATABASE dbreview_test;" -U postgres
- cp config/database.yml.travis config/database.yml
- bundle exec rake db:test:load
script:
- bundle exec rspec
```

Dokumentacja klas/modułów Ruby

* [Array](http://www.ruby-doc.org/core-2.1.1/Array.html)
* [Hash](http://www.ruby-doc.org/core-2.1.1/Hash.html)
* [Enumerable](http://www.ruby-doc.org/core-2.1.1/Enumerable.html)
* [String](http://www.ruby-doc.org/core-2.1.1/String.html)
* [Regexp](http://www.ruby-doc.org/core-2.1.1/Regexp.html)
