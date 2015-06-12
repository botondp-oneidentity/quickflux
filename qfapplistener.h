#ifndef QFAPPLISTENER_H
#define QFAPPLISTENER_H

#include <QObject>
#include <QJSValue>
#include <QPointer>
#include <QQuickItem>
#include <QQmlParserStatus>
#include <QMap>

class QFAppListener : public QQuickItem
{
    Q_OBJECT

public:
    explicit QFAppListener(QQuickItem *parent = 0);
    ~QFAppListener();

    /// Get the listening target.
    QObject *target() const;

    /// Set the listening target. If the class is constructed by QQmlComponent. It will be set automatically.
    void setTarget(QObject *target);

    /// Add a listener to the end of the listeners array for the specified message.  Multiple calls passing the same combination of event and listener will result in the listener being added multiple times.
    Q_INVOKABLE QFAppListener* on(QString name,QJSValue callback);

    /// Remove a listener from the listener array for the specified message.
    Q_INVOKABLE void removeListener(QString name,QJSValue callback);

    /// Remove all the listeners for a message with name. If name is empty, it will remove all the listeners.
    Q_INVOKABLE void removeAllListener(QString name = QString());

signals:
    /// It is emitted whatever it has received a dispatched message from AppDispatcher.
    void dispatched(QString name,QJSValue message);

public slots:

private:
    virtual void componentComplete();
    Q_INVOKABLE void onMessageReceived(QString name,QJSValue message);

    QPointer<QObject> m_target;

    QMap<QString,QList<QJSValue> >  mapping;
};

#endif // QFAPPLISTENER_H