.class public final synthetic Lorg/wikipedia/util/-$$Lambda$ShareUtil$jUaGZMBx7ORr5YjDAcP7l_sLc7M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$jUaGZMBx7ORr5YjDAcP7l_sLc7M;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$jUaGZMBx7ORr5YjDAcP7l_sLc7M;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$jUaGZMBx7ORr5YjDAcP7l_sLc7M;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$jUaGZMBx7ORr5YjDAcP7l_sLc7M;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$jUaGZMBx7ORr5YjDAcP7l_sLc7M;->f$1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/wikipedia/util/-$$Lambda$ShareUtil$jUaGZMBx7ORr5YjDAcP7l_sLc7M;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/wikipedia/util/ShareUtil;->lambda$shareImage$0(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
