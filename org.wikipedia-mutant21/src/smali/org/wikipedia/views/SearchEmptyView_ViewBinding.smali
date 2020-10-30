.class public Lorg/wikipedia/views/SearchEmptyView_ViewBinding;
.super Ljava/lang/Object;
.source "SearchEmptyView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/views/SearchEmptyView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/SearchEmptyView;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/views/SearchEmptyView_ViewBinding;-><init>(Lorg/wikipedia/views/SearchEmptyView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/views/SearchEmptyView;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/wikipedia/views/SearchEmptyView_ViewBinding;->target:Lorg/wikipedia/views/SearchEmptyView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09036f

    const-string v2, "field \'emptyText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lorg/wikipedia/views/SearchEmptyView;->emptyText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lorg/wikipedia/views/SearchEmptyView_ViewBinding;->target:Lorg/wikipedia/views/SearchEmptyView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lorg/wikipedia/views/SearchEmptyView_ViewBinding;->target:Lorg/wikipedia/views/SearchEmptyView;

    .line 36
    iput-object v1, v0, Lorg/wikipedia/views/SearchEmptyView;->emptyText:Landroid/widget/TextView;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
