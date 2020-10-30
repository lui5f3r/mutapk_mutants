.class final Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeableListView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/views/SwipeableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/SwipeableListView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/SwipeableListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;->this$0:Lorg/wikipedia/views/SwipeableListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const-string v0, "event1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;->this$0:Lorg/wikipedia/views/SwipeableListView;

    .line 37
    invoke-static {v0, p1, p2}, Lorg/wikipedia/views/SwipeableListView;->access$swipeDetected(Lorg/wikipedia/views/SwipeableListView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/16 p2, 0x64

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 38
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/16 p2, 0x7d0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 39
    iget-object p1, p0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;->this$0:Lorg/wikipedia/views/SwipeableListView;

    invoke-virtual {p1}, Lorg/wikipedia/views/SwipeableListView;->getListener()Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;->onSwipeOut()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
