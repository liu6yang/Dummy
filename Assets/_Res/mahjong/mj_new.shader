// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.28 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.28;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9361,x:33543,y:32540,varname:node_9361,prsc:2|spec-4518-OUT,gloss-700-OUT,emission-3323-OUT;n:type:ShaderForge.SFN_Tex2d,id:3084,x:32219,y:32624,ptovrint:False,ptlb:Maintex,ptin:_Maintex,varname:node_3084,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Get,id:8133,x:31755,y:33526,varname:node_8133,prsc:2|IN-7155-OUT;n:type:ShaderForge.SFN_Set,id:7155,x:32777,y:32627,varname:MainTexc,prsc:2|IN-3084-RGB;n:type:ShaderForge.SFN_NormalVector,id:2997,x:31486,y:32998,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:9201,x:31501,y:32768,varname:node_9201,prsc:2;n:type:ShaderForge.SFN_Dot,id:2180,x:31687,y:32876,varname:node_2180,prsc:2,dt:4|A-2997-OUT,B-9201-OUT;n:type:ShaderForge.SFN_Vector1,id:4344,x:31710,y:32717,varname:node_4344,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:8192,x:31867,y:32876,varname:node_8192,prsc:2|A-4344-OUT,B-2180-OUT;n:type:ShaderForge.SFN_Multiply,id:6236,x:32048,y:32876,varname:node_6236,prsc:2|A-4344-OUT,B-8192-OUT;n:type:ShaderForge.SFN_Multiply,id:3205,x:32235,y:32876,varname:node_3205,prsc:2|A-6236-OUT,B-6236-OUT;n:type:ShaderForge.SFN_Multiply,id:8889,x:32425,y:32786,varname:node_8889,prsc:2|A-3084-RGB,B-3205-OUT;n:type:ShaderForge.SFN_Slider,id:5202,x:32356,y:32980,ptovrint:False,ptlb:maintex_qd,ptin:_maintex_qd,varname:node_5202,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.362793,max:3;n:type:ShaderForge.SFN_Multiply,id:3361,x:32668,y:32786,varname:node_3361,prsc:2|A-8889-OUT,B-5202-OUT;n:type:ShaderForge.SFN_HalfVector,id:6471,x:31501,y:33206,varname:node_6471,prsc:2;n:type:ShaderForge.SFN_Dot,id:9902,x:31777,y:33104,varname:node_9902,prsc:2,dt:1|A-2997-OUT,B-6471-OUT;n:type:ShaderForge.SFN_Power,id:1224,x:32048,y:33092,varname:node_1224,prsc:2|VAL-9902-OUT,EXP-663-OUT;n:type:ShaderForge.SFN_Exp,id:663,x:31824,y:33269,varname:node_663,prsc:2,et:1|IN-2419-OUT;n:type:ShaderForge.SFN_Slider,id:2419,x:31376,y:33468,ptovrint:False,ptlb:specularRange,ptin:_specularRange,varname:node_2419,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.00464,max:10;n:type:ShaderForge.SFN_Multiply,id:4993,x:32377,y:33074,varname:node_4993,prsc:2|A-1224-OUT,B-6900-OUT;n:type:ShaderForge.SFN_Slider,id:6900,x:32013,y:33322,ptovrint:False,ptlb:specular_qd,ptin:_specular_qd,varname:node_6900,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.324097,max:10;n:type:ShaderForge.SFN_Add,id:3323,x:32956,y:32951,varname:node_3323,prsc:2|A-3361-OUT,B-6915-OUT;n:type:ShaderForge.SFN_Desaturate,id:7722,x:31968,y:33533,varname:node_7722,prsc:2|COL-8133-OUT;n:type:ShaderForge.SFN_RemapRange,id:737,x:32149,y:33533,varname:node_737,prsc:2,frmn:0,frmx:1.5,tomn:-1.5,tomx:1|IN-7722-OUT;n:type:ShaderForge.SFN_Clamp01,id:7827,x:32315,y:33516,varname:node_7827,prsc:2|IN-737-OUT;n:type:ShaderForge.SFN_Color,id:5946,x:32448,y:33239,ptovrint:False,ptlb:node_5946,ptin:_node_5946,varname:node_5946,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5661765,c2:0.5661765,c3:0.5661765,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:7522,x:32486,y:33481,ptovrint:False,ptlb:node_7522,ptin:_node_7522,varname:node_7522,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:6915,x:32784,y:33187,varname:node_6915,prsc:2|A-4993-OUT,B-7827-OUT,C-5946-RGB,D-7522-OUT;n:type:ShaderForge.SFN_ValueProperty,id:700,x:32984,y:32495,ptovrint:False,ptlb:gao_guang,ptin:_gao_guang,varname:node_700,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:4518,x:33015,y:32354,ptovrint:False,ptlb:gao_guang_dian,ptin:_gao_guang_dian,varname:node_4518,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:3084-5202-2419-6900-5946-7522-700-4518;pass:END;sub:END;*/

Shader "Shader Forge/mj_new" {
    Properties {
        _Maintex ("Maintex", 2D) = "white" {}
        _maintex_qd ("maintex_qd", Range(0, 3)) = 2.362793
        _specularRange ("specularRange", Range(0, 10)) = 2.00464
        _specular_qd ("specular_qd", Range(0, 10)) = 1.324097
        _node_5946 ("node_5946", Color) = (0.5661765,0.5661765,0.5661765,1)
        _node_7522 ("node_7522", Float ) = 2
        _gao_guang ("gao_guang", Float ) = 0
        _gao_guang_dian ("gao_guang_dian", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float _maintex_qd;
            uniform float _specularRange;
            uniform float _specular_qd;
            uniform float4 _node_5946;
            uniform float _node_7522;
            uniform float _gao_guang;
            uniform float _gao_guang_dian;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _gao_guang;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_gao_guang_dian,_gao_guang_dian,_gao_guang_dian);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
////// Emissive:
                float4 _Maintex_var = tex2D(_Maintex,TRANSFORM_TEX(i.uv0, _Maintex));
                float node_4344 = 0.5;
                float node_6236 = (node_4344*(node_4344+0.5*dot(i.normalDir,lightDirection)+0.5));
                float3 MainTexc = _Maintex_var.rgb;
                float3 emissive = (((_Maintex_var.rgb*(node_6236*node_6236))*_maintex_qd)+((pow(max(0,dot(i.normalDir,halfDirection)),exp2(_specularRange))*_specular_qd)*saturate((dot(MainTexc,float3(0.3,0.59,0.11))*1.666667+-1.5))*_node_5946.rgb*_node_7522));
/// Final Color:
                float3 finalColor = specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Maintex; uniform float4 _Maintex_ST;
            uniform float _maintex_qd;
            uniform float _specularRange;
            uniform float _specular_qd;
            uniform float4 _node_5946;
            uniform float _node_7522;
            uniform float _gao_guang;
            uniform float _gao_guang_dian;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _gao_guang;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_gao_guang_dian,_gao_guang_dian,_gao_guang_dian);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/// Final Color:
                float3 finalColor = specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
