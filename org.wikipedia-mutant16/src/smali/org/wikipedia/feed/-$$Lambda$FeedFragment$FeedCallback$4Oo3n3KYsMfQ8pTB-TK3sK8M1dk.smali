.class public final synthetic Lorg/wikipedia/feed/-$$Lambda$FeedFragment$FeedCallback$4Oo3n3KYsMfQ8pTB-TK3sK8M1dk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/random/RandomCardView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/random/RandomCardView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/-$$Lambda$FeedFragment$FeedCallback$4Oo3n3KYsMfQ8pTB-TK3sK8M1dk;->f$0:Lorg/wikipedia/feed/random/RandomCardView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/feed/-$$Lambda$FeedFragment$FeedCallback$4Oo3n3KYsMfQ8pTB-TK3sK8M1dk;->f$0:Lorg/wikipedia/feed/random/RandomCardView;

    invoke-static {v0, p1}, Lorg/wikipedia/feed/FeedFragment$FeedCallback;->lambda$onGetRandomError$1(Lorg/wikipedia/feed/random/RandomCardView;Landroid/view/View;)V

    return-void
.end method
