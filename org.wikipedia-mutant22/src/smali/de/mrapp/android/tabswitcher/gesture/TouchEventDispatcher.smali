.class public Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;
.super Ljava/lang/Object;
.source "TouchEventDispatcher.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;,
        Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final activeEventHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$Callback;

.field private draggingEventHandler:Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

.field private final eventHandlers:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->eventHandlers:Ljava/util/SortedMap;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->draggingEventHandler:Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    .line 182
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->callback:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$Callback;

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;)Ljava/util/SortedMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->eventHandlers:Ljava/util/SortedMap;

    return-object p0
.end method

.method private notifyOnAddedEventHandler(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->callback:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$Callback;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p0, p1}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$Callback;->onAddedEventHandler(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V

    :cond_0
    return-void
.end method

.method private notifyOnRemovedEventHandler(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->callback:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$Callback;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0, p0, p1}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$Callback;->onRemovedEventHandler(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addEventHandler(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V
    .locals 3

    .line 204
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The handler may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getPriority()I

    move-result v0

    .line 206
    iget-object v1, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->eventHandlers:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/util/datastructure/ListenerList;

    if-nez v1, :cond_0

    .line 209
    new-instance v1, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {v1}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    .line 210
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->eventHandlers:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_0
    invoke-virtual {v1, p1}, Lde/mrapp/util/datastructure/ListenerList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->notifyOnAddedEventHandler(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V

    return-void
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 267
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The event may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->draggingEventHandler:Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->draggingEventHandler:Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->isReset()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->draggingEventHandler:Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->isDragging()Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    :cond_0
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->draggingEventHandler:Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 279
    iget-object v3, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_7

    .line 280
    iget-object v4, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    .line 281
    invoke-virtual {v4, p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 283
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->isReset()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_6

    .line 285
    invoke-virtual {v4}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->isDragging()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 286
    iput-object v4, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->draggingEventHandler:Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    .line 287
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    .line 290
    invoke-virtual {v3, v1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->onUp(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 293
    :cond_4
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    goto :goto_4

    .line 284
    :cond_5
    :goto_3
    iget-object v4, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    or-int/2addr v0, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_7
    :goto_4
    if-nez v0, :cond_b

    .line 303
    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/high16 v4, -0x80000000

    .line 307
    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    if-eqz v5, :cond_b

    .line 308
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getPriority()I

    move-result v6

    if-lt v6, v4, :cond_b

    .line 309
    invoke-virtual {v5, p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->isInsideTouchableArea(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 310
    invoke-virtual {v5, p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 312
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->isReset()Z

    move-result v6

    if-nez v6, :cond_8

    .line 315
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 316
    iput-object v5, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->draggingEventHandler:Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    .line 318
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    .line 319
    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->onUp(Landroid/view/MotionEvent;)V

    goto :goto_6

    .line 322
    :cond_9
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_7

    .line 325
    :cond_a
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v5}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getPriority()I

    move-result v0

    move v4, v0

    const/4 v0, 0x1

    goto :goto_5

    :cond_b
    move v2, v0

    :goto_7
    return v2
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;

    invoke-direct {v0, p0}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$EventHandlerIterator;-><init>(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;)V

    return-object v0
.end method

.method public final removeEventHandler(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V
    .locals 4

    .line 225
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The handler may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->eventHandlers:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/util/datastructure/ListenerList;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 231
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    .line 234
    invoke-virtual {p1, v1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 236
    invoke-direct {p0, v1}, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->notifyOnRemovedEventHandler(Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_3

    .line 242
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    .line 244
    invoke-virtual {p1, v2}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 245
    invoke-virtual {v2, v1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->onUp(Landroid/view/MotionEvent;)V

    .line 246
    iget-object v2, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->activeEventHandlers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 252
    :cond_3
    :goto_2
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->draggingEventHandler:Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 253
    iget-object p1, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->draggingEventHandler:Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    invoke-virtual {p1, v1}, Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;->onUp(Landroid/view/MotionEvent;)V

    .line 254
    iput-object v1, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->draggingEventHandler:Lde/mrapp/android/tabswitcher/gesture/AbstractTouchEventHandler;

    :cond_4
    return-void
.end method

.method public final setCallback(Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$Callback;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher;->callback:Lde/mrapp/android/tabswitcher/gesture/TouchEventDispatcher$Callback;

    return-void
.end method
