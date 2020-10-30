.class public final synthetic Lorg/wikipedia/page/-$$Lambda$dplUSQ2_p1YATOWoC0ObaR3v8R8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/ToCHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/ToCHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$dplUSQ2_p1YATOWoC0ObaR3v8R8;->f$0:Lorg/wikipedia/page/ToCHandler;

    return-void
.end method


# virtual methods
.method public final onSwipeOut()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$dplUSQ2_p1YATOWoC0ObaR3v8R8;->f$0:Lorg/wikipedia/page/ToCHandler;

    invoke-virtual {v0}, Lorg/wikipedia/page/ToCHandler;->hide()V

    return-void
.end method
