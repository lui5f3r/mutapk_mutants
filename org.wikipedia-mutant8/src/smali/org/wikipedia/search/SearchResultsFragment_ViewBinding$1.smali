.class Lorg/wikipedia/search/SearchResultsFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SearchResultsFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/search/SearchResultsFragment_ViewBinding;-><init>(Lorg/wikipedia/search/SearchResultsFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/search/SearchResultsFragment_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/search/SearchResultsFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/search/SearchResultsFragment_ViewBinding;Lorg/wikipedia/search/SearchResultsFragment;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsFragment_ViewBinding$1;->this$0:Lorg/wikipedia/search/SearchResultsFragment_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment_ViewBinding$1;->val$target:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/wikipedia/search/SearchResultsFragment_ViewBinding$1;->val$target:Lorg/wikipedia/search/SearchResultsFragment;

    invoke-virtual {v0, p1}, Lorg/wikipedia/search/SearchResultsFragment;->onSuggestionClick(Landroid/view/View;)V

    return-void
.end method
