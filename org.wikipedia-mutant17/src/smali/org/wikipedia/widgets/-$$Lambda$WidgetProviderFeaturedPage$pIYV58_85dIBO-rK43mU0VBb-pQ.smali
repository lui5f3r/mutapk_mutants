.class public final synthetic Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$pIYV58_85dIBO-rK43mU0VBb-pQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;

.field public final synthetic f$1:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$pIYV58_85dIBO-rK43mU0VBb-pQ;->f$0:Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;

    iput-object p2, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$pIYV58_85dIBO-rK43mU0VBb-pQ;->f$1:Lorg/wikipedia/page/PageTitle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$pIYV58_85dIBO-rK43mU0VBb-pQ;->f$0:Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;

    iget-object v1, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$pIYV58_85dIBO-rK43mU0VBb-pQ;->f$1:Lorg/wikipedia/page/PageTitle;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;->lambda$getFeaturedArticleInformation$4(Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;Lorg/wikipedia/page/PageTitle;Ljava/lang/Throwable;)V

    return-void
.end method
