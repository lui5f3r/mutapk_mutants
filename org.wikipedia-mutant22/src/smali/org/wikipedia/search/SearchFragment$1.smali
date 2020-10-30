.class Lorg/wikipedia/search/SearchFragment$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/search/SearchFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/search/SearchFragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/wikipedia/search/SearchFragment$1;->this$0:Lorg/wikipedia/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment$1;->this$0:Lorg/wikipedia/search/SearchFragment;

    invoke-virtual {v0}, Lorg/wikipedia/search/SearchFragment;->closeSearch()V

    .line 110
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment$1;->this$0:Lorg/wikipedia/search/SearchFragment;

    invoke-static {v0}, Lorg/wikipedia/search/SearchFragment;->access$100(Lorg/wikipedia/search/SearchFragment;)Lorg/wikipedia/analytics/SearchFunnel;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/search/SearchFragment$1;->this$0:Lorg/wikipedia/search/SearchFragment;

    invoke-static {v1}, Lorg/wikipedia/search/SearchFragment;->access$000(Lorg/wikipedia/search/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/wikipedia/analytics/SearchFunnel;->searchCancel(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
