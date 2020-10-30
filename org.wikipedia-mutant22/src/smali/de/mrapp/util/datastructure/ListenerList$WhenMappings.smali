.class public final synthetic Lde/mrapp/util/datastructure/ListenerList$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;->values()[Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lde/mrapp/util/datastructure/ListenerList$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;->EQUALITY:Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lde/mrapp/util/datastructure/ListenerList$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lde/mrapp/util/datastructure/ListenerList$CompareMethod;->IDENTITY:Lde/mrapp/util/datastructure/ListenerList$CompareMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
