.class Lorg/wikipedia/views/SearchActionProvider$1;
.super Ljava/lang/Object;
.source "SearchActionProvider.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/SearchActionProvider;->onCreateActionView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/SearchActionProvider;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/SearchActionProvider;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/wikipedia/views/SearchActionProvider$1;->this$0:Lorg/wikipedia/views/SearchActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/wikipedia/views/SearchActionProvider$1;->this$0:Lorg/wikipedia/views/SearchActionProvider;

    iget-object v0, v0, Lorg/wikipedia/views/SearchActionProvider;->searchView:Lorg/wikipedia/views/CabSearchView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/CabSearchView;->setCloseButtonVisibility(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/wikipedia/views/SearchActionProvider$1;->this$0:Lorg/wikipedia/views/SearchActionProvider;

    invoke-static {v0}, Lorg/wikipedia/views/SearchActionProvider;->access$000(Lorg/wikipedia/views/SearchActionProvider;)Lorg/wikipedia/views/SearchActionProvider$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/wikipedia/views/SearchActionProvider$Callback;->onQueryTextChange(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
