.class public final synthetic Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$jWsey0dRTJwFjV106QSt32pg-8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$jWsey0dRTJwFjV106QSt32pg-8k;->f$0:Lorg/wikipedia/page/PageTitle;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$jWsey0dRTJwFjV106QSt32pg-8k;->f$0:Lorg/wikipedia/page/PageTitle;

    check-cast p1, Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;

    invoke-static {v0, p1}, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;->lambda$getFeaturedArticleInformation$1(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/feed/aggregated/AggregatedFeedContent;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
