.class Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;
.super Ljava/lang/Object;
.source "TouchEventDispatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandlerIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private eventHandlerIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private priorityIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;


# direct methods
.method constructor <init>(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;)V
    .locals 1

    .line 92
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->this$0:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->access$000(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->priorityIterator:Ljava/util/Iterator;

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->priorityIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 97
    invoke-static {p1}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->access$000(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/mrapp/util/datastructure/ListenerList;

    .line 98
    invoke-virtual {p1}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->eventHandlerIterator:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->eventHandlerIterator:Ljava/util/Iterator;

    :goto_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->eventHandlerIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->priorityIterator:Ljava/util/Iterator;

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;
    .locals 2

    .line 112
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->eventHandlerIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->eventHandlerIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->priorityIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->priorityIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->this$0:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;

    invoke-static {v1}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->access$000(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/util/datastructure/ListenerList;

    .line 117
    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->eventHandlerIterator:Ljava/util/Iterator;

    .line 118
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->next()Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;->next()Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    move-result-object v0

    return-object v0
.end method
