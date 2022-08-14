# try, success, failure

When we want to carefully track code as it runs, 
then we favor the pattern of "try, success, failure". 

* on try, we use logger.debug

* on success, we use logger.info

* on failure, we use logger.error

Example:

```swift
public func foo() {
    do {
        logger.debug("foo try")
        … your code here …
        logger.info("foo success")
    }
    catch {
        logger.info("foo failure")
    }
}
```

Example using functions with logs:

```swift
public func foo() {
    do {
        fooTry()
        … your code here …
        fooSuccess()
    }
    catch {
        fooFailure(error)
    }
}

private func fooTry() {
    logger.debug("fooTry")
}

private func fooSuccess() {
    logger.info("fooSuccess")
}

private func fooFailure() {
    logger.error("fooFailure")
}
```
