.class final Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$1;
.super Ljava/lang/Object;
.source "FilePageFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/commons/FilePageFragment;->loadImageInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/BiFunction<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/commons/FilePageFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/commons/FilePageFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$1;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Ljava/util/Map;

    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$1;->apply(Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;)Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;",
            ")",
            "Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;"
        }
    .end annotation

    const-string v0, "caption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$1;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    invoke-static {v0}, Lorg/wikipedia/commons/FilePageFragment;->access$getPageTitle$p(Lorg/wikipedia/commons/FilePageFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/commons/FilePageFragment$loadImageInfo$1;->this$0:Lorg/wikipedia/commons/FilePageFragment;

    invoke-static {v1}, Lorg/wikipedia/commons/FilePageFragment;->access$getPageTitle$p(Lorg/wikipedia/commons/FilePageFragment;)Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageTitle;->setDescription(Ljava/lang/String;)V

    return-object p2
.end method
