.class public Lorg/wikipedia/views/SearchActionProvider_ViewBinding;
.super Ljava/lang/Object;
.source "SearchActionProvider_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/views/SearchActionProvider;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/SearchActionProvider;Landroid/view/View;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/wikipedia/views/SearchActionProvider_ViewBinding;->target:Lorg/wikipedia/views/SearchActionProvider;

    .line 20
    const-class v0, Lorg/wikipedia/views/CabSearchView;

    const v1, 0x7f090373

    const-string v2, "field \'searchView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/views/CabSearchView;

    iput-object p2, p1, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/wikipedia/views/SearchActionProvider_ViewBinding;->target:Lorg/wikipedia/views/SearchActionProvider;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lorg/wikipedia/views/SearchActionProvider_ViewBinding;->target:Lorg/wikipedia/views/SearchActionProvider;

    .line 30
    iput-object v1, v0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
