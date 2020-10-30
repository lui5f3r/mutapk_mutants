.class public final synthetic Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$_0prHwV6INeQYjnLCU16vwTS7po;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;

.field public final synthetic f$1:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$_0prHwV6INeQYjnLCU16vwTS7po;->f$0:Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;

    iput-object p2, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$_0prHwV6INeQYjnLCU16vwTS7po;->f$1:Lorg/wikipedia/page/PageTitle;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$_0prHwV6INeQYjnLCU16vwTS7po;->f$0:Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;

    iget-object v1, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$_0prHwV6INeQYjnLCU16vwTS7po;->f$1:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;->lambda$getFeaturedArticleInformation$2$WidgetProviderFeaturedPage(Lorg/wikipedia/page/PageTitle;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
