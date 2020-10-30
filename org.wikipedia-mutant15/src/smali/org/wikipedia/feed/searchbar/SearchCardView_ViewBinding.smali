.class public Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;
.super Ljava/lang/Object;
.source "SearchCardView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/searchbar/SearchCardView;

.field private view7f09036a:Landroid/view/View;

.field private view7f0904b1:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/searchbar/SearchCardView;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;-><init>(Lorg/wikipedia/feed/searchbar/SearchCardView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/searchbar/SearchCardView;Landroid/view/View;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;->target:Lorg/wikipedia/feed/searchbar/SearchCardView;

    const v0, 0x7f09036a

    const-string v1, "method \'onSearchClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;->view7f09036a:Landroid/view/View;

    .line 33
    new-instance v1, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding$1;-><init>(Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;Lorg/wikipedia/feed/searchbar/SearchCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904b1

    const-string v1, "method \'onVoiceSearchClick\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 40
    iput-object p2, p0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;->view7f0904b1:Landroid/view/View;

    .line 41
    new-instance v0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding$2;-><init>(Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;Lorg/wikipedia/feed/searchbar/SearchCardView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;->target:Lorg/wikipedia/feed/searchbar/SearchCardView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;->target:Lorg/wikipedia/feed/searchbar/SearchCardView;

    .line 56
    iget-object v1, p0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;->view7f09036a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v0, p0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;->view7f09036a:Landroid/view/View;

    .line 58
    iget-object v1, p0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;->view7f0904b1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object v0, p0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;->view7f0904b1:Landroid/view/View;

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
