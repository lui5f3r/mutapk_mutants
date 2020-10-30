.class Lorg/wikipedia/page/PageActivity$OverflowCallback;
.super Ljava/lang/Object;
.source "PageActivity.java"

# interfaces
.implements Lorg/wikipedia/views/PageActionOverflowView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/PageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/PageActivity;


# direct methods
.method private constructor <init>(Lorg/wikipedia/page/PageActivity;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity$OverflowCallback;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/page/PageActivity;Lorg/wikipedia/page/PageActivity$1;)V
    .locals 0

    .line 660
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageActivity$OverflowCallback;-><init>(Lorg/wikipedia/page/PageActivity;)V

    return-void
.end method


# virtual methods
.method public feedClick()V
    .locals 2

    .line 683
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity$OverflowCallback;->this$0:Lorg/wikipedia/page/PageActivity;

    sget-object v1, Lorg/wikipedia/navtab/NavTab;->EXPLORE:Lorg/wikipedia/navtab/NavTab;

    invoke-static {v0, v1}, Lorg/wikipedia/page/PageActivity;->access$300(Lorg/wikipedia/page/PageActivity;Lorg/wikipedia/navtab/NavTab;)V

    return-void
.end method

.method public findInPageClick()V
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity$OverflowCallback;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {v0}, Lorg/wikipedia/page/PageActivity;->access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->showFindInPage()V

    return-void
.end method

.method public forwardClick()V
    .locals 1

    .line 663
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity$OverflowCallback;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {v0}, Lorg/wikipedia/page/PageActivity;->access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->goForward()V

    return-void
.end method

.method public newTabClick()V
    .locals 2

    .line 678
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity$OverflowCallback;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {v0}, Lorg/wikipedia/page/PageActivity;->newIntentForNewTab(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public shareClick()V
    .locals 1

    .line 673
    iget-object v0, p0, Lorg/wikipedia/page/PageActivity$OverflowCallback;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {v0}, Lorg/wikipedia/page/PageActivity;->access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->sharePageLink()V

    return-void
.end method
