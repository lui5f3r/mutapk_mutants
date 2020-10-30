.class Lorg/wikipedia/feed/FeedCoordinatorBase$ClientRequestCallback;
.super Ljava/lang/Object;
.source "FeedCoordinatorBase.java"

# interfaces
.implements Lorg/wikipedia/feed/dataclient/FeedClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/FeedCoordinatorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientRequestCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/FeedCoordinatorBase;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/FeedCoordinatorBase;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lorg/wikipedia/feed/FeedCoordinatorBase$ClientRequestCallback;->this$0:Lorg/wikipedia/feed/FeedCoordinatorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/FeedCoordinatorBase;Lorg/wikipedia/feed/FeedCoordinatorBase$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/FeedCoordinatorBase$ClientRequestCallback;-><init>(Lorg/wikipedia/feed/FeedCoordinatorBase;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 241
    invoke-static {p1}, Lorg/wikipedia/util/ThrowableUtil;->isOffline(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object p1, p0, Lorg/wikipedia/feed/FeedCoordinatorBase$ClientRequestCallback;->this$0:Lorg/wikipedia/feed/FeedCoordinatorBase;

    invoke-static {p1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->access$700(Lorg/wikipedia/feed/FeedCoordinatorBase;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/feed/FeedCoordinatorBase$ClientRequestCallback;->this$0:Lorg/wikipedia/feed/FeedCoordinatorBase;

    invoke-static {v0}, Lorg/wikipedia/feed/FeedCoordinatorBase;->access$300(Lorg/wikipedia/feed/FeedCoordinatorBase;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->access$400(Lorg/wikipedia/feed/FeedCoordinatorBase;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 246
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/wikipedia/feed/model/Card;",
            ">;)V"
        }
    .end annotation

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/feed/model/Card;

    .line 228
    iget-object v3, p0, Lorg/wikipedia/feed/FeedCoordinatorBase$ClientRequestCallback;->this$0:Lorg/wikipedia/feed/FeedCoordinatorBase;

    invoke-static {v3, v1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->access$100(Lorg/wikipedia/feed/FeedCoordinatorBase;Lorg/wikipedia/feed/model/Card;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    iget-object v0, p0, Lorg/wikipedia/feed/FeedCoordinatorBase$ClientRequestCallback;->this$0:Lorg/wikipedia/feed/FeedCoordinatorBase;

    invoke-static {v0, v1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->access$200(Lorg/wikipedia/feed/FeedCoordinatorBase;Lorg/wikipedia/feed/model/Card;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/feed/FeedCoordinatorBase$ClientRequestCallback;->this$0:Lorg/wikipedia/feed/FeedCoordinatorBase;

    invoke-static {p1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->access$300(Lorg/wikipedia/feed/FeedCoordinatorBase;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->access$400(Lorg/wikipedia/feed/FeedCoordinatorBase;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 235
    iget-object p1, p0, Lorg/wikipedia/feed/FeedCoordinatorBase$ClientRequestCallback;->this$0:Lorg/wikipedia/feed/FeedCoordinatorBase;

    invoke-static {p1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->access$500(Lorg/wikipedia/feed/FeedCoordinatorBase;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/wikipedia/feed/FeedCoordinatorBase$ClientRequestCallback;->this$0:Lorg/wikipedia/feed/FeedCoordinatorBase;

    invoke-static {p1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->access$600(Lorg/wikipedia/feed/FeedCoordinatorBase;)Lorg/wikipedia/feed/FeedCoordinatorBase$FeedUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 236
    iget-object p1, p0, Lorg/wikipedia/feed/FeedCoordinatorBase$ClientRequestCallback;->this$0:Lorg/wikipedia/feed/FeedCoordinatorBase;

    invoke-static {p1}, Lorg/wikipedia/feed/FeedCoordinatorBase;->access$600(Lorg/wikipedia/feed/FeedCoordinatorBase;)Lorg/wikipedia/feed/FeedCoordinatorBase$FeedUpdateListener;

    move-result-object p1

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Lorg/wikipedia/feed/FeedCoordinatorBase$FeedUpdateListener;->finished(Z)V

    :cond_2
    return-void
.end method
