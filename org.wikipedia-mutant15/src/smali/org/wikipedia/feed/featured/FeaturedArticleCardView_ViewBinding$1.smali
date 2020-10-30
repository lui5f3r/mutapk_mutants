.class Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FeaturedArticleCardView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;-><init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;Lorg/wikipedia/feed/featured/FeaturedArticleCardView;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding$1;->this$0:Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding$1;->val$target:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lorg/wikipedia/feed/featured/FeaturedArticleCardView_ViewBinding$1;->val$target:Lorg/wikipedia/feed/featured/FeaturedArticleCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/featured/FeaturedArticleCardView;->onCardClick()V

    return-void
.end method
