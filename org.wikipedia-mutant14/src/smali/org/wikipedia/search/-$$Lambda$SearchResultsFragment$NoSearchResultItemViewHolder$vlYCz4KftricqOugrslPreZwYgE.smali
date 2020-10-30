.class public final synthetic Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$NoSearchResultItemViewHolder$vlYCz4KftricqOugrslPreZwYgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$NoSearchResultItemViewHolder$vlYCz4KftricqOugrslPreZwYgE;->f$0:Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;

    iput p2, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$NoSearchResultItemViewHolder$vlYCz4KftricqOugrslPreZwYgE;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$NoSearchResultItemViewHolder$vlYCz4KftricqOugrslPreZwYgE;->f$0:Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;

    iget v1, p0, Lorg/wikipedia/search/-$$Lambda$SearchResultsFragment$NoSearchResultItemViewHolder$vlYCz4KftricqOugrslPreZwYgE;->f$1:I

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/search/SearchResultsFragment$NoSearchResultItemViewHolder;->lambda$bindItem$0$SearchResultsFragment$NoSearchResultItemViewHolder(ILandroid/view/View;)V

    return-void
.end method
