.class public final synthetic Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$0F2Y-Hbty14GpMZWtIYEUDsQsBk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/widgets/WidgetProviderFeaturedPage$Callback;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/appwidget/AppWidgetManager;


# direct methods
.method public synthetic constructor <init>([ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$0F2Y-Hbty14GpMZWtIYEUDsQsBk;->f$0:[I

    iput-object p2, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$0F2Y-Hbty14GpMZWtIYEUDsQsBk;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$0F2Y-Hbty14GpMZWtIYEUDsQsBk;->f$2:Landroid/appwidget/AppWidgetManager;

    return-void
.end method


# virtual methods
.method public final onFeaturedArticleReceived(Lorg/wikipedia/page/PageTitle;Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$0F2Y-Hbty14GpMZWtIYEUDsQsBk;->f$0:[I

    iget-object v1, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$0F2Y-Hbty14GpMZWtIYEUDsQsBk;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lorg/wikipedia/widgets/-$$Lambda$WidgetProviderFeaturedPage$0F2Y-Hbty14GpMZWtIYEUDsQsBk;->f$2:Landroid/appwidget/AppWidgetManager;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;->lambda$onUpdate$0([ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;Lorg/wikipedia/page/PageTitle;Ljava/lang/CharSequence;)V

    return-void
.end method
