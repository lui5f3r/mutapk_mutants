.class Lorg/wikipedia/views/FindInPageActionProvider$1;
.super Ljava/lang/Object;
.source "FindInPageActionProvider.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/views/FindInPageActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/FindInPageActionProvider;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/FindInPageActionProvider;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider$1;->this$0:Lorg/wikipedia/views/FindInPageActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider$1;->this$0:Lorg/wikipedia/views/FindInPageActionProvider;

    iget-object v0, v0, Lorg/wikipedia/views/FindInPageActionProvider;->findInPageMatch:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider$1;->this$0:Lorg/wikipedia/views/FindInPageActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/views/FindInPageActionProvider;->setFindInPageChevronsEnabled(Z)V

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider$1;->this$0:Lorg/wikipedia/views/FindInPageActionProvider;

    invoke-static {v0}, Lorg/wikipedia/views/FindInPageActionProvider;->access$000(Lorg/wikipedia/views/FindInPageActionProvider;)Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;->onSearchTextChanged(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
