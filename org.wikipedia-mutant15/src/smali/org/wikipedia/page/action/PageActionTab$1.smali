.class final enum Lorg/wikipedia/page/action/PageActionTab$1;
.super Lorg/wikipedia/page/action/PageActionTab;
.source "PageActionTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/action/PageActionTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/page/action/PageActionTab;-><init>(Ljava/lang/String;ILorg/wikipedia/page/action/PageActionTab$1;)V

    return-void
.end method


# virtual methods
.method public select(Lorg/wikipedia/page/action/PageActionTab$Callback;)V
    .locals 0

    .line 12
    invoke-interface {p1}, Lorg/wikipedia/page/action/PageActionTab$Callback;->onAddToReadingListTabSelected()V

    return-void
.end method
