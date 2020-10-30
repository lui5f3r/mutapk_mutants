.class public Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;
.super Ljava/lang/Object;
.source "OfflineCardView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/offline/OfflineCardView;

.field private view7f090457:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/offline/OfflineCardView;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;-><init>(Lorg/wikipedia/feed/offline/OfflineCardView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/offline/OfflineCardView;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;->target:Lorg/wikipedia/feed/offline/OfflineCardView;

    .line 30
    const-class v0, Landroid/widget/Space;

    const v1, 0x7f090458

    const-string v2, "field \'padding\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p1, Lorg/wikipedia/feed/offline/OfflineCardView;->padding:Landroid/widget/Space;

    const v0, 0x7f090457

    const-string v1, "method \'onRetryClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 32
    iput-object p2, p0, Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;->view7f090457:Landroid/view/View;

    .line 33
    new-instance v0, Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding$1;-><init>(Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;Lorg/wikipedia/feed/offline/OfflineCardView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;->target:Lorg/wikipedia/feed/offline/OfflineCardView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;->target:Lorg/wikipedia/feed/offline/OfflineCardView;

    .line 48
    iput-object v1, v0, Lorg/wikipedia/feed/offline/OfflineCardView;->padding:Landroid/widget/Space;

    .line 50
    iget-object v0, p0, Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;->view7f090457:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object v1, p0, Lorg/wikipedia/feed/offline/OfflineCardView_ViewBinding;->view7f090457:Landroid/view/View;

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
