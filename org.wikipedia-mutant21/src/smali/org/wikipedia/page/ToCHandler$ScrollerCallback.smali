.class Lorg/wikipedia/page/ToCHandler$ScrollerCallback;
.super Ljava/lang/Object;
.source "ToCHandler.java"

# interfaces
.implements Lorg/wikipedia/views/PageScrollerView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/ToCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/ToCHandler;


# direct methods
.method private constructor <init>(Lorg/wikipedia/page/ToCHandler;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lorg/wikipedia/page/ToCHandler$ScrollerCallback;->this$0:Lorg/wikipedia/page/ToCHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/page/ToCHandler;Lorg/wikipedia/page/ToCHandler$1;)V
    .locals 0

    .line 350
    invoke-direct {p0, p1}, Lorg/wikipedia/page/ToCHandler$ScrollerCallback;-><init>(Lorg/wikipedia/page/ToCHandler;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    return-void
.end method

.method public onScrollStart()V
    .locals 0

    return-void
.end method

.method public onScrollStop()V
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler$ScrollerCallback;->this$0:Lorg/wikipedia/page/ToCHandler;

    invoke-virtual {v0}, Lorg/wikipedia/page/ToCHandler;->hide()V

    return-void
.end method

.method public onVerticalScroll(F)V
    .locals 2

    .line 366
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler$ScrollerCallback;->this$0:Lorg/wikipedia/page/ToCHandler;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/wikipedia/page/ToCHandler;->access$400(Lorg/wikipedia/page/ToCHandler;FZ)V

    return-void
.end method
