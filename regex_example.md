REGEX example

- Find host address of emails

```
# Example 1 OK
s='From stephen.marquard@umich.edu to  meeting  at 2PM'
atpos = s.find('@')
#21
sppos = s.find(' ', atpos)
print(sppos)
#31
host = s[atpos+1 : sppos]
print(host)
#umich.edu
```


```
# Example 2 Better
# Double Split
s='A message from csev@umich.edu to cwen@iupui.edu about meeting @2PM'
words = s.split()
email = words(4)
pieces = email.split('@')
print(pieces[1])
```


