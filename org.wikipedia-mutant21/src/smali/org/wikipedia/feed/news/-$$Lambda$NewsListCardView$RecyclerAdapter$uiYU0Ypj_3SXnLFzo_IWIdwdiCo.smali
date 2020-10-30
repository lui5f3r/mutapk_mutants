.class public final synthetic Lorg/wikipedia/feed/news/-$$Lambda$NewsListCardView$RecyclerAdapter$uiYU0Ypj_3SXnLFzo_IWIdwdiCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;

.field public final synthetic f$1:Lorg/wikipedia/feed/news/NewsItemCard;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;Lorg/wikipedia/feed/news/NewsItemCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/news/-$$Lambda$NewsListCardView$RecyclerAdapter$uiYU0Ypj_3SXnLFzo_IWIdwdiCo;->f$0:Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;

    iput-object p2, p0, Lorg/wikipedia/feed/news/-$$Lambda$NewsListCardView$RecyclerAdapter$uiYU0Ypj_3SXnLFzo_IWIdwdiCo;->f$1:Lorg/wikipedia/feed/news/NewsItemCard;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/feed/news/-$$Lambda$NewsListCardView$RecyclerAdapter$uiYU0Ypj_3SXnLFzo_IWIdwdiCo;->f$0:Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;

    iget-object v1, p0, Lorg/wikipedia/feed/news/-$$Lambda$NewsListCardView$RecyclerAdapter$uiYU0Ypj_3SXnLFzo_IWIdwdiCo;->f$1:Lorg/wikipedia/feed/news/NewsItemCard;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/feed/news/NewsListCardView$RecyclerAdapter;->lambda$onBindViewHolder$0$NewsListCardView$RecyclerAdapter(Lorg/wikipedia/feed/news/NewsItemCard;Landroid/view/View;)V

    return-void
.end method
