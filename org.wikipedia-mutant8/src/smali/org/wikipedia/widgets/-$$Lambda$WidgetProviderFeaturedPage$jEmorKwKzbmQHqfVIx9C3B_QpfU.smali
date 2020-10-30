.class public final synthetic Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$jEmorKwKzbmQHqfVIx9C3B_QpfU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/WikipediaApp;

.field public final synthetic f$1:Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$jEmorKwKzbmQHqfVIx9C3B_QpfU;->f$0:Lorg/wikipedia/WikipediaApp;

    iput-object p2, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$jEmorKwKzbmQHqfVIx9C3B_QpfU;->f$1:Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$jEmorKwKzbmQHqfVIx9C3B_QpfU;->f$0:Lorg/wikipedia/WikipediaApp;

    iget-object v1, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$jEmorKwKzbmQHqfVIx9C3B_QpfU;->f$1:Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;

    invoke-static {v0, v1, p1}, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;->lambda$getFeaturedArticleInformation$3(Lorg/wikipedia/WikipediaApp;Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;Ljava/lang/Object;)V

    return-void
.end method
