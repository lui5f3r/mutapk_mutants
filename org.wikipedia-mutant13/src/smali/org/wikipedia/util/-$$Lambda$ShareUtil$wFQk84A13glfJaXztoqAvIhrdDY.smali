.class public final synthetic Lorg/wikipedia/util/-$$Lambda$ShareUtil$wFQk84A13glfJaXztoqAvIhrdDY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$wFQk84A13glfJaXztoqAvIhrdDY;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$wFQk84A13glfJaXztoqAvIhrdDY;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$wFQk84A13glfJaXztoqAvIhrdDY;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$wFQk84A13glfJaXztoqAvIhrdDY;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$wFQk84A13glfJaXztoqAvIhrdDY;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$wFQk84A13glfJaXztoqAvIhrdDY;->f$2:Ljava/lang/String;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, v2, p1}, Lorg/wikipedia/util/ShareUtil;->lambda$shareImage$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
