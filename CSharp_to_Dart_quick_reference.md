# **C# to Dart (quick reference)**

- [`Nulls`](#nulls)

---

## <a name="nulls"></a>**Nulls**
Everything is `null` in Dart 

To *check* if something is `null`, we can use something like

```dart
if (myVariable != null) {
  // ...
}
```

If our variable is `null`, we can assign a default value too

```dart
myVariable = myVariable ?? 0;
```

And we can get the `null` value avoiding an error using `?`

```dart
var myVariable = null;
print(myVariable?.toString());
```


