.class public final Lorg/wikipedia/views/SwipeableListView;
.super Landroid/widget/ListView;
.source "SwipeableListView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;,
        Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;,
        Lorg/wikipedia/views/SwipeableListView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/views/SwipeableListView$Companion;

.field public static final SWIPE_MAX_DISTANCE:I = 0x12c

.field public static final SWIPE_MAX_Y_VELOCITY:I = 0x7d0

.field public static final SWIPE_MIN_DISTANCE:I = 0xc8

.field public static final SWIPE_MIN_X_VELOCITY:I = 0x64


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private listener:Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;

.field private rtl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/wikipedia/views/SwipeableListView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/views/SwipeableListView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/views/SwipeableListView;->Companion:Lorg/wikipedia/views/SwipeableListView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;

    invoke-direct {v0, p0}, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;-><init>(Lorg/wikipedia/views/SwipeableListView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 18
    new-instance p1, Lorg/wikipedia/views/SwipeableListView$1;

    invoke-direct {p1, p2}, Lorg/wikipedia/views/SwipeableListView$1;-><init>(Landroid/view/GestureDetector;)V

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/views/SwipeableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$swipeDetected(Lorg/wikipedia/views/SwipeableListView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/views/SwipeableListView;->swipeDetected(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final swipeDetected(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 26
    iget-boolean v0, p0, Lorg/wikipedia/views/SwipeableListView;->rtl:Z

    const/4 v1, 0x1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    const/16 v4, 0x12c

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v0, v5

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    int-to-float p2, v2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v0, v5

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/views/SwipeableListView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/views/SwipeableListView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wikipedia/views/SwipeableListView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/wikipedia/views/SwipeableListView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/views/SwipeableListView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getListener()Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/wikipedia/views/SwipeableListView;->listener:Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;

    return-object v0
.end method

.method public final getRtl()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lorg/wikipedia/views/SwipeableListView;->rtl:Z

    return v0
.end method

.method public final setListener(Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lorg/wikipedia/views/SwipeableListView;->listener:Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;

    return-void
.end method

.method public final setRtl(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lorg/wikipedia/views/SwipeableListView;->rtl:Z

    return-void
.end method
